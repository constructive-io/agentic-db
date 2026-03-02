import type { Route } from 'next';
import { useRouter } from 'next/navigation';
import { useMutation, useQueryClient } from '@tanstack/react-query';

import { TokenManager } from '@/lib/auth/token-manager';
import { useAuthActions } from '@/store/app-store';
import { ROUTE_PATHS } from '@/app-routes';
import { useSignOutMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

/**
 * Schema-builder logout hook using SDK-generated mutation
 */
export function useLogoutSb() {
	const queryClient = useQueryClient();
	const authActions = useAuthActions();
	const router = useRouter();
	const signOutMutation = useSignOutMutation({ selection: { fields: { clientMutationId: true } } });

	return useMutation({
		mutationKey: authKeys.signOut.queryKey,
		mutationFn: async () => {
			// Call signOut mutation (best-effort, continue even if fails)
			try {
				await signOutMutation.mutateAsync({
					input: {},
				});
			} catch {
				// Server-side logout failed, but we still clear local state
			}
		},
		onSuccess: () => {
			// Clear token and auth state
			TokenManager.clearToken('schema-builder');
			authActions.setUnauthenticated();

			// Invalidate all queries
			queryClient.invalidateQueries({ queryKey: authKeys._def });

			// Redirect to root
			router.push(ROUTE_PATHS.ROOT as Route);
		},
	});
}
