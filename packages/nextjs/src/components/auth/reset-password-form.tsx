'use client';

import { useResetPassword } from '@/lib/gql/hooks/auth';
import { ResetPasswordFormView } from './reset-password-form-view';

interface ResetPasswordFormProps {
	resetToken: string;
	roleId?: string;
	onShowLogin?: () => void;
}

export function ResetPasswordForm({ resetToken, roleId, onShowLogin }: ResetPasswordFormProps) {
	const resetPasswordMutation = useResetPassword();

	return (
		<ResetPasswordFormView
			resetToken={resetToken}
			roleId={roleId}
			onResetPassword={(input) => resetPasswordMutation.mutateAsync(input)}
			onShowLogin={onShowLogin}
		/>
	);
}
