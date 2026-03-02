import { MutationCache, QueryCache, QueryClient } from '@tanstack/react-query';

import { DataError, DataErrorType } from '@/lib/gql/error-handler';
import { createLogger } from '@/lib/logger';
import { appStore } from '@/store/app-store';

const logger = createLogger({ scope: 'query-client' });

// ============================================================================
// Global Auth Error Handler
// ============================================================================

/**
 * Tracks auth error handling state to prevent
 * multiple concurrent handlers from triggering logout multiple times.
 */
let authErrorHandling = { isHandling: false, lastHandledAt: 0 };

/**
 * Minimum time between auth error handling attempts (ms).
 */
const AUTH_ERROR_COOLDOWN = 2000;

/**
 * Check if an error is an authentication error that requires logout.
 */
function isAuthError(error: unknown): boolean {
	if (error instanceof DataError) {
		return error.type === DataErrorType.UNAUTHORIZED;
	}
	if (error instanceof Error) {
		const msg = error.message.toLowerCase();
		return msg.includes('unauthenticated') || msg.includes('unauthorized');
	}
	return false;
}

/**
 * Handle authentication errors globally.
 * Clears auth state and cancels all queries on auth errors.
 * Uses a flag and cooldown to prevent multiple concurrent handlers
 * from triggering logout multiple times when many queries fail at once.
 */
function handleGlobalAuthError(error: unknown, queryKey?: readonly unknown[]): void {
	if (!isAuthError(error)) return;

	const now = Date.now();

	// Skip if we're already handling or within cooldown period
	if (authErrorHandling.isHandling || (now - authErrorHandling.lastHandledAt) < AUTH_ERROR_COOLDOWN) {
		logger.debug('Auth error handling skipped (already handling or in cooldown)');
		return;
	}

	authErrorHandling.isHandling = true;
	authErrorHandling.lastHandledAt = now;

	logger.info('Auth error detected', { queryKey });

	appStore.setUnauthenticated();
	queryClient.cancelQueries();

	logger.info('Auth cleared due to auth error');

	// Reset the flag after cooldown
	setTimeout(() => {
		authErrorHandling.isHandling = false;
	}, AUTH_ERROR_COOLDOWN);
}

// ============================================================================
// Query Client Configuration
// ============================================================================

/**
 * Configured QueryClient with sensible defaults for GraphQL operations
 *
 * Key configurations:
 * - Queries retry up to 2 times for network/timeout errors only
 * - Mutations never auto-retry (user should control this)
 * - Errors propagate immediately for non-retryable cases
 * - Global error handler for authentication errors
 */
export const queryClient = new QueryClient({
	queryCache: new QueryCache({
		onError: (error, query) => {
			logger.debug('Query error', { queryKey: query.queryKey, error });
			handleGlobalAuthError(error, query.queryKey);
		},
	}),
	mutationCache: new MutationCache({
		onError: (error, _variables, _context, mutation) => {
			// Mutations may have a mutationKey that helps identify context
			const mutationKey = mutation.options.mutationKey;
			logger.debug('Mutation error', { mutationKey, error });
			handleGlobalAuthError(error, mutationKey);
		},
	}),
	defaultOptions: {
		queries: {
			// Retry only retryable errors (network, timeout) up to 2 times
			// Never retry auth errors
			retry: (failureCount, error) => {
				// Never retry auth errors
				if (isAuthError(error)) return false;
				if (failureCount >= 2) return false;
				// Use DataError's isRetryable method if available
				if (error instanceof DataError) {
					return error.isRetryable();
				}
				return false;
			},
			retryDelay: (attemptIndex) => Math.min(1000 * 2 ** attemptIndex, 10000),

			// Don't refetch on window focus by default
			refetchOnWindowFocus: false,

			// Cache configuration
			staleTime: 0,
			gcTime: 5 * 60 * 1000,
		},
		mutations: {
			// Never auto-retry mutations
			retry: false,
		},
	},
});
