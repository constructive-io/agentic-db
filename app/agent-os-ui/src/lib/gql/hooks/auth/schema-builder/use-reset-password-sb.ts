import { useMutation, useQueryClient } from '@tanstack/react-query';

import { useResetPasswordMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

interface ResetPasswordInput {
	newPassword: string;
	resetToken: string;
	roleId?: string;
}

/**
 * Schema-builder reset password hook using SDK-generated mutation
 */
export function useResetPasswordSb() {
	const queryClient = useQueryClient();
	const resetPasswordMutation = useResetPasswordMutation({ selection: { fields: { result: true } } });

	return useMutation({
		mutationKey: authKeys.resetPassword.queryKey,
		mutationFn: async (input: ResetPasswordInput) => {
			const result = await resetPasswordMutation.mutateAsync({
				input: {
					newPassword: input.newPassword,
					resetToken: input.resetToken,
					roleId: input.roleId,
				},
			});

			if (!result.resetPassword?.result) {
				throw new Error('Failed to reset password. The link may have expired.');
			}

			return { success: true };
		},
		onSuccess: () => {
			queryClient.invalidateQueries({ queryKey: authKeys._def });
		},
	});
}
