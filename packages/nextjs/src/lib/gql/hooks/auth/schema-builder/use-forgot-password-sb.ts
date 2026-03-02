import { useMutation } from '@tanstack/react-query';

import { useForgotPasswordMutation } from '@sdk/api';

import { authKeys } from '../../query-keys';

interface ForgotPasswordInput {
	email: string;
}

/**
 * Schema-builder forgot password hook using SDK-generated mutation
 */
export function useForgotPasswordSb() {
	const forgotPasswordMutation = useForgotPasswordMutation({ selection: { fields: { clientMutationId: true } } });

	return useMutation({
		mutationKey: authKeys.forgotPassword.queryKey,
		mutationFn: async ({ email }: ForgotPasswordInput) => {
			await forgotPasswordMutation.mutateAsync({
				input: { email },
			});
			return { email };
		},
	});
}
