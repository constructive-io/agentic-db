import { useMutation, useQueryClient } from '@tanstack/react-query';

import { useSendVerificationEmailMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

/**
 * Schema-builder send verification email hook using SDK-generated mutation
 */
export function useSendVerificationEmailSb() {
	const queryClient = useQueryClient();
	const sendVerificationMutation = useSendVerificationEmailMutation({ selection: { fields: { result: true } } });

	return useMutation({
		mutationKey: authKeys.sendVerificationEmail.queryKey,
		mutationFn: async (input: { email: string }) => {
			const result = await sendVerificationMutation.mutateAsync({
				input: { email: input.email },
			});

			if (!result.sendVerificationEmail?.result) {
				throw new Error('Failed to send verification email. Please try again.');
			}

			return { success: true, email: input.email };
		},
		onSuccess: () => {
			queryClient.invalidateQueries({ queryKey: authKeys._def });
		},
	});
}
