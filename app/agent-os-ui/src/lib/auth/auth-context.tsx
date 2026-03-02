'use client';

import React, { createContext, useCallback, useContext, useEffect, useMemo, useRef } from 'react';

import { useExtendToken } from '@/lib/gql/hooks/auth';
import { useLogin } from '@/lib/gql/hooks/auth';
import { useLogout } from '@/lib/gql/hooks/auth';
import { initEnvOverridesSync } from '@/lib/runtime/env-sync';
import { useAuth, useAuthActions } from '@/store/app-store';
import type { UserProfile } from '@/store/auth-slice';

import type { LoginFormData } from './schemas';
import { TokenManager } from './token-manager';

/**
 * Authentication context interface
 */
interface AuthContextType {
	// State
	isAuthenticated: boolean;
	isLoading: boolean;
	user: UserProfile | null;

	// Actions
	login: (credentials: LoginFormData) => Promise<void>;
	logout: () => Promise<void>;
	extendToken: (intervalInput?: { hours?: number; minutes?: number; days?: number }) => Promise<void>;

	// Utilities
	checkAuthStatus: () => void;
}

/**
 * Authentication context
 */
const AuthContext = createContext<AuthContextType | null>(null);

/**
 * Hook to use authentication context
 */
export function useAuthContext(): AuthContextType {
	const context = useContext(AuthContext);
	if (!context) {
		throw new Error('useAuthContext must be used within an AuthProvider');
	}
	return context;
}

/**
 * Initialize auth state.
 * Checks token storage and updates the auth slice accordingly.
 */
function initializeAuth(
	authActions: ReturnType<typeof useAuthActions>,
) {
	const { token, rememberMe } = TokenManager.getToken('schema-builder');

	if (!token) {
		authActions.setUnauthenticated();
		authActions.setLoading(false);
		return;
	}

	if (TokenManager.isTokenExpired(token)) {
		TokenManager.clearToken('schema-builder');
		authActions.setUnauthenticated();
		authActions.setLoading(false);
		return;
	}

	const user: UserProfile = {
		id: token.userId ?? token.id,
		email: '',
	};

	authActions.setAuthenticated(user, token, rememberMe);
}

/**
 * Authentication provider component
 *
 * IMPORTANT: This provider initializes auth on mount for schema-builder (app-level auth).
 * This ensures the AppShell can check auth regardless of which route the user starts on.
 */
export function AuthProvider({ children }: { children: React.ReactNode }) {
	const auth = useAuth();
	const authActions = useAuthActions();

	// Use the new custom hooks
	const loginMutation = useLogin();
	const logoutMutation = useLogout();
	const extendTokenMutation = useExtendToken();

	// Track if auth has been initialized to avoid redundant initializations
	const hasInitialized = useRef(false);

	// Check authentication status
	const checkAuthStatus = useCallback(() => {
		initializeAuth(authActions);
	}, [authActions]);

	// Initialize auth state on mount
	useEffect(() => {
		if (hasInitialized.current) return;
		hasInitialized.current = true;

		TokenManager.initStorageSync();
		initEnvOverridesSync();

		initializeAuth(authActions);
	}, [authActions]);

	// Set up token expiration monitoring and automatic refresh
	useEffect(() => {
		if (!auth.isAuthenticated || !auth.token) {
			return;
		}

		const timeUntilExpiration = TokenManager.getTimeUntilExpiration(auth.token);
		if (!Number.isFinite(timeUntilExpiration) || timeUntilExpiration <= 0) {
			return;
		}

		// Only set up monitoring if token has reasonable time left
		const minimumTime = 10 * 60 * 1000; // 10 minutes
		if (timeUntilExpiration <= minimumTime) {
			return;
		}

		// Set up automatic token refresh 15 minutes before expiration
		const refreshBuffer = 15 * 60 * 1000; // 15 minutes
		const MAX_TIMEOUT = 2_147_483_647; // ~24.8 days, browser setTimeout cap
		const timeUntilRefresh = Math.max(0, Math.min(MAX_TIMEOUT, timeUntilExpiration - refreshBuffer));

		// Set up automatic logout 5 minutes before expiration (fallback)
		const logoutBuffer = 5 * 60 * 1000; // 5 minutes
		const timeUntilLogout = Math.max(0, Math.min(MAX_TIMEOUT, timeUntilExpiration - logoutBuffer));

		let refreshTimeoutId: NodeJS.Timeout | null = null;
		let logoutTimeoutId: NodeJS.Timeout | null = null;

		// Schedule token refresh
		if (timeUntilRefresh > 0) {
			refreshTimeoutId = setTimeout(() => {
				extendTokenMutation.mutate({ hours: 1 });
			}, timeUntilRefresh);
		}

		// Schedule logout as fallback
		if (timeUntilLogout > 0) {
			logoutTimeoutId = setTimeout(() => {
				logoutMutation.mutate();
			}, timeUntilLogout);
		}

		return () => {
			if (refreshTimeoutId) clearTimeout(refreshTimeoutId);
			if (logoutTimeoutId) clearTimeout(logoutTimeoutId);
		};
	}, [auth.isAuthenticated, auth.token, extendTokenMutation, logoutMutation]);

	// Stable action callbacks to prevent context re-renders
	const login = useCallback(
		async (credentials: LoginFormData) => {
			// Note: We intentionally do NOT call setLoading() here.
			// The form manages its own isSubmitting state. Setting auth loading
			// would cause AuthGate to unmount the form (switching to spinner),
			// which loses the form's local error state when login fails.
			await loginMutation.mutateAsync(credentials);
		},
		[loginMutation],
	);

	const logout = useCallback(async () => {
		await logoutMutation.mutateAsync(undefined);
	}, [logoutMutation]);

	const extendToken = useCallback(
		async (intervalInput?: { hours?: number; minutes?: number; days?: number }) => {
			await extendTokenMutation.mutateAsync(intervalInput);
		},
		[extendTokenMutation],
	);

	// Memoized context value - prevents unnecessary re-renders of consumers
	const contextValue = useMemo<AuthContextType>(
		() => ({
			isAuthenticated: auth.isAuthenticated,
			// Note: loginMutation.isPending is intentionally excluded from isLoading.
			// Including it would cause AuthGate to show a spinner (unmounting the form),
			// which loses the form's local error state when login fails with invalid credentials.
			// The form manages its own isSubmitting state for the button loading indicator.
			isLoading: auth.isLoading || logoutMutation.isPending || extendTokenMutation.isPending,
			user: auth.user,

			// Actions
			login,
			logout,
			extendToken,

			// Utilities
			checkAuthStatus,
		}),
		[
			auth.isAuthenticated,
			auth.isLoading,
			auth.user,
			logoutMutation.isPending,
			extendTokenMutation.isPending,
			login,
			logout,
			extendToken,
			checkAuthStatus,
		],
	);

	return <AuthContext.Provider value={contextValue}>{children}</AuthContext.Provider>;
}
