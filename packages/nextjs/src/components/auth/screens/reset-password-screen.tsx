'use client';

import { AuthScreenHeader, type AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';
import { ResetPasswordFormView } from '../reset-password-form-view';

export interface ResetPasswordScreenProps extends AuthBrandingProps {
	resetToken: string;
	roleId?: string;
	onResetPassword: (input: { newPassword: string; resetToken: string; roleId?: string }) => Promise<unknown>;
}

export function ResetPasswordScreen({
	resetToken,
	roleId,
	onResetPassword,
	logo,
	appName,
	showLogo,
}: ResetPasswordScreenProps) {
	if (!resetToken) {
		return (
			<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
				<AuthScreenHeader
					title='Invalid link'
					description='Please check your email for the correct link.'
					logo={logo}
					appName={appName}
					showLogo={showLogo}
				/>
			</AuthScreenLayout>
		);
	}

	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<ResetPasswordFormView resetToken={resetToken} roleId={roleId} onResetPassword={onResetPassword} />
		</AuthScreenLayout>
	);
}
