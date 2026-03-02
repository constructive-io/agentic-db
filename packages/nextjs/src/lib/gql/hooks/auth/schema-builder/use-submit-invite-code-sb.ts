import { useMutation } from '@tanstack/react-query';

import { useSubmitInviteCodeMutation } from '@sdk/api';

/**
 * Schema-builder submit invite code hook using SDK-generated mutation
 */
export function useSubmitInviteCodeSb() {
	const submitInviteMutation = useSubmitInviteCodeMutation({ selection: { fields: { result: true } } });

	return useMutation({
		mutationKey: ['invite', 'submit-invite-code'],
		mutationFn: async (token: string) => {
			const result = await submitInviteMutation.mutateAsync({
				input: { token },
			});
			if (!result.submitInviteCode?.result) {
				throw new Error('Invite could not be accepted.');
			}
			return { success: true };
		},
	});
}
