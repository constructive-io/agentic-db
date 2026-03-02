import { useMutation } from '@tanstack/react-query';

import { useSubmitOrgInviteCodeMutation } from '@sdk/api';

/**
 * Schema-builder submit org invite code hook using SDK-generated mutation
 */
export function useSubmitOrgInviteCodeSb() {
	const submitOrgInviteMutation = useSubmitOrgInviteCodeMutation({ selection: { fields: { result: true } } });

	return useMutation({
		mutationKey: ['invite', 'submit-org-invite-code'],
		mutationFn: async (token: string) => {
			const result = await submitOrgInviteMutation.mutateAsync({
				input: { token },
			});
			if (!result.submitOrgInviteCode?.result) {
				throw new Error('Invite could not be accepted.');
			}
			return { success: true };
		},
	});
}
