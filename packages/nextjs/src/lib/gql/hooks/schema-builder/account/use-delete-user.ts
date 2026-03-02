import type { Route } from 'next';
import { useRouter } from 'next/navigation';
import { useQueryClient } from '@tanstack/react-query';

import { TokenManager } from '@/lib/auth/token-manager';
import { useAuthActions } from '@/store/app-store';
import { getHomePath } from '@/app-config';
import { useDeleteUserMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

export interface DeleteUserInput {
	userId: string;
}

/**
 * Wrapper around SDK's useDeleteUserMutation that adds critical side effects:
 * - Clears auth token
 * - Updates auth state to unauthenticated
 * - Clears query cache
 * - Redirects to home
 */
export function useDeleteUser() {
	const queryClient = useQueryClient();
	const authActions = useAuthActions();
	const router = useRouter();
	const ctx = 'schema-builder';

	const mutation = useDeleteUserMutation({
		selection: { fields: { id: true } },
		onSuccess: () => {
			TokenManager.clearToken(ctx);
			authActions.setUnauthenticated();
			queryClient.invalidateQueries({ queryKey: authKeys._def });
			queryClient.clear();
			router.push(getHomePath(ctx) as Route);
		},
	});

	return {
		deleteUser: (input: DeleteUserInput) => mutation.mutateAsync({ id: input.userId }),
		isDeleting: mutation.isPending,
		error: mutation.error,
		reset: mutation.reset,
	};
}
