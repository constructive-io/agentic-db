import type { Route } from 'next';
import { useRouter } from 'next/navigation';
import { useMutation, useQueryClient } from '@tanstack/react-query';

import type { RegisterFormData } from '@/lib/auth/schemas';
import { TokenManager } from '@/lib/auth/token-manager';
import { toApiToken } from '@/lib/auth/token-utils';
import { useAuthActions } from '@/store/app-store';
import type { UserProfile } from '@/store/auth-slice';
import { ROUTE_PATHS } from '@/app-routes';
import {
	fetchAppMembershipsQuery,
	useSendVerificationEmailMutation,
	useSignUpMutation,
} from '@sdk/api';

import { authKeys } from '../../query-keys';

/**
 * Schema-builder register hook using SDK-generated mutation
 * Handles registration and verification email flow
 */
export function useRegisterSb() {
	const queryClient = useQueryClient();
	const authActions = useAuthActions();
	const router = useRouter();
	const signUpMutation = useSignUpMutation({
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
	const sendVerificationMutation = useSendVerificationEmailMutation({ selection: { fields: { result: true } } });

	return useMutation({
		mutationKey: authKeys.signUp.queryKey,
		mutationFn: async (formData: RegisterFormData) => {
			const result = await signUpMutation.mutateAsync({
				input: {
					email: formData.email,
					password: formData.password,
					rememberMe: formData.rememberMe ?? true,
				},
			});

			const signUpResult = result.signUp?.result;

			if (!signUpResult) {
				throw new Error('Sign up failed. Please try again.');
			}

			return {
				rememberMe: formData.rememberMe ?? true,
				email: formData.email,
				signUpResult,
			};
		},
		onSuccess: async ({ email, rememberMe, signUpResult }) => {
			const token = toApiToken(signUpResult);

			if (!token) {
				throw new Error('Sign up failed. Please try again.');
			}

			// Store token first - needed for the membership query
			TokenManager.setToken(token, rememberMe, 'schema-builder');
			const userId = token.userId || token.id;

			// Query actual isVerified status from database - signUpResult.isVerified is stale
			// because the trigger hasn't updated the table yet at signup time
			let isVerified = false;
			try {
				const membershipResult = await fetchAppMembershipsQuery({
					selection: { fields: { isVerified: true }, where: { actorId: { equalTo: userId } }, first: 1 },
				});
				isVerified = membershipResult?.appMemberships?.nodes?.[0]?.isVerified ?? false;
			} catch {
				// Best-effort: default to unverified (user will be sent to email verification)
			}

			if (isVerified) {
				const user: UserProfile = {
					id: userId,
					email: email || '',
				};
				authActions.setAuthenticated(user, token, rememberMe);
				queryClient.invalidateQueries({ queryKey: authKeys._def });
				return;
			}

			// Not verified: send email and redirect
			try {
				await sendVerificationMutation.mutateAsync({
					input: { email },
				});
			} catch {
				// Best-effort: still navigate to check-email even if sending fails
			}

			authActions.setUnauthenticated();
			queryClient.invalidateQueries({ queryKey: authKeys._def });

			const url = `${ROUTE_PATHS.CHECK_EMAIL}?type=verification&email=${encodeURIComponent(email)}`;
			router.push(url as Route);
		},
		onError: () => {
			authActions.setUnauthenticated();
		},
	});
}
