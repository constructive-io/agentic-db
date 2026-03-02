'use client';

import React from 'react';

import { useAuth, useAuthActions } from '@/store/app-store';

import { useAuthContext } from './auth-context';
import { TokenManager } from './token-manager';
import { useNetworkStatusWithRetry } from './use-network-status';

/**
 * Enhanced auth hook with network awareness
 * Provides network status and retry capabilities for auth operations
 */
export function useAuthWithNetwork() {
	const auth = useAuth();
	const authActions = useAuthActions();
	const authContext = useAuthContext();
	const network = useNetworkStatusWithRetry();

	// Check if authentication operations are possible
	const canAuthenticate = network.isOnline && !auth.isLoading;

	// Retry authentication operations when network comes back
	const retryAuth = React.useCallback(async () => {
		if (!network.canRetry) {
			throw new Error('Cannot retry authentication operations while offline or already retrying');
		}

		// Check if we have a token to work with
		const { token } = TokenManager.getToken();
		if (!token) {
			throw new Error('No token available for retry');
		}

		// If token is expired, we can't retry - user needs to login again
		if (TokenManager.isTokenExpired(token)) {
			authActions.setUnauthenticated();
			throw new Error('Token expired, please login again');
		}

		// Retry token extension to validate connectivity
		await network.retry(async () => {
			await authContext.extendToken({ hours: 1 });
		});
	}, [network, authActions, authContext]);

	// Auto-retry when coming back online
	const handleReconnection = React.useCallback(async () => {
		if (network.justReconnected && auth.isAuthenticated) {
			try {
				await retryAuth();
			} catch (_error) {
				// If retry fails, the token might be invalid
				// Let the error boundary handle this
			}
		}
	}, [network.justReconnected, auth.isAuthenticated, retryAuth]);

	// Auto-handle reconnection
	React.useEffect(() => {
		handleReconnection();
	}, [handleReconnection]);

	return {
		// Auth state
		...auth,

		// Auth actions
		...authContext,

		// Network state
		isOnline: network.isOnline,
		isOffline: network.isOffline,
		wasOffline: network.wasOffline,
		justReconnected: network.justReconnected,

		// Combined state
		canAuthenticate,
		needsRetry: network.wasOffline && auth.isAuthenticated,

		// Retry capabilities
		retryCount: network.retryCount,
		isRetrying: network.isRetrying,
		retryAuth,
		canRetry: network.canRetry && auth.isAuthenticated,
	};
}

/**
 * Network status indicator component for auth pages
 */
export function NetworkStatusIndicator() {
	const { isOnline, isOffline, justReconnected, isRetrying } = useAuthWithNetwork();

	if (isOnline && !justReconnected && !isRetrying) {
		return null;
	}

	return (
		<div className='fixed top-0 right-0 left-0 z-50'>
			{isOffline && (
				<div className='bg-destructive text-destructive-foreground px-4 py-2 text-center text-sm'>
					You &apos;re offline. Authentication features are disabled.
				</div>
			)}

			{justReconnected && (
				<div className='bg-green-600 px-4 py-2 text-center text-sm text-white'>
					Connection restored. Syncing authentication...
				</div>
			)}

			{isRetrying && (
				<div className='bg-blue-600 px-4 py-2 text-center text-sm text-white'>Retrying authentication...</div>
			)}
		</div>
	);
}
