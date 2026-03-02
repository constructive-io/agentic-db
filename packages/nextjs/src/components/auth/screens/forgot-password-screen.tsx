'use client';

import type { ForgotPasswordFormData } from '@/lib/auth/schemas';

import type { AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';
import { ForgotPasswordFormView } from '../forgot-password-form-view';

export interface ForgotPasswordScreenProps extends AuthBrandingProps {
	onForgotPassword: (formData: ForgotPasswordFormData) => Promise<unknown>;
}

export function ForgotPasswordScreen({ onForgotPassword, logo, appName, showLogo }: ForgotPasswordScreenProps) {
	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<ForgotPasswordFormView onForgotPassword={onForgotPassword} />
		</AuthScreenLayout>
	);
}
