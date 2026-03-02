import { useMutation, useQueryClient } from '@tanstack/react-query';

import { createInvalidCredentialsError } from '@/lib/auth/auth-errors';
import type { LoginFormData } from '@/lib/auth/schemas';
import { TokenManager } from '@/lib/auth/token-manager';
import { toApiToken } from '@/lib/auth/token-utils';
import { useAuthActions } from '@/store/app-store';
import type { UserProfile } from '@/store/auth-slice';
import { useSignInMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

/**
 * Schema-builder login hook using SDK-generated mutation
 * Handles token management and auth state updates
 */
export function useLoginSb() {
	const queryClient = useQueryClient();
	const authActions = useAuthActions();
	const signInMutation = useSignInMutation({
		selection: {
			fields: {
				result: {
					select: {
						id: true,
						userId: true,
						accessToken: true,
						accessTokenExpiresAt: true,
						isVerified: true,
						totpEnabled: true,
					},
				},
			},
		},
	});

	return useMutation({
		mutationKey: authKeys.signIn.queryKey,
		mutationFn: async (credentials: LoginFormData) => {
			const result = await signInMutation.mutateAsync({
				input: {
					email: credentials.email,
					password: credentials.password,
					rememberMe: credentials.rememberMe,
				},
			});

			const signInResult = result.signIn?.result;

			if (!signInResult) {
				throw createInvalidCredentialsError();
			}

			const token = toApiToken(signInResult);

			if (!token) {
				throw createInvalidCredentialsError();
			}

			return {
				token,
				email: credentials.email,
				rememberMe: credentials.rememberMe || false,
			};
		},
		onSuccess: async ({ token, rememberMe, email }) => {
			// Store token for schema-builder context
			TokenManager.setToken(token, rememberMe, 'schema-builder');

			const userId = token.userId ?? token.id;

			// Extract user profile from token
			const user: UserProfile = {
				id: userId,
				email: email || '',
			};

			// Update auth state
			authActions.setAuthenticated(user, token, rememberMe);

			// Invalidate any auth-related queries
			queryClient.invalidateQueries({ queryKey: authKeys._def });
		},
	});
}
