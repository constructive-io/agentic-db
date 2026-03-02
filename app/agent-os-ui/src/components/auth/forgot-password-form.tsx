'use client';

import { useForgotPassword } from '@/lib/gql/hooks/auth';
import { ForgotPasswordFormView } from './forgot-password-form-view';

interface ForgotPasswordFormProps {
	onShowLogin?: () => void;
}

export function ForgotPasswordForm({ onShowLogin }: ForgotPasswordFormProps) {
	const forgotPasswordMutation = useForgotPassword();

	return (
		<ForgotPasswordFormView
			onForgotPassword={(data) => forgotPasswordMutation.mutateAsync(data)}
			onShowLogin={onShowLogin}
		/>
	);
}
