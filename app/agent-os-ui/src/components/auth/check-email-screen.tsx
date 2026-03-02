'use client';

import type { AuthBrandingProps } from './auth-screen-header';
import { AuthScreenLayout } from './auth-screen-layout';
import { CheckEmailForm, type CheckEmailType } from './check-email-form';

interface CheckEmailScreenProps extends AuthBrandingProps {
	type: CheckEmailType;
	email: string;
	onSendVerificationEmail?: (email: string) => Promise<void>;
	isSending?: boolean;
	sendSuccess?: boolean;
	error?: string | null;
	onBackToLogin?: () => void;
}


export function CheckEmailScreen({
	type,
	email,
	onSendVerificationEmail,
	isSending,
	sendSuccess,
	error,
	onBackToLogin,
	logo,
	appName,
	showLogo = false, // Status screen
}: CheckEmailScreenProps) {
	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<CheckEmailForm
				type={type}
				email={email}
				onSendVerificationEmail={type === 'verification' ? onSendVerificationEmail : undefined}
				isSending={isSending}
				sendSuccess={sendSuccess}
				error={error}
				onBackToLogin={onBackToLogin}
				logo={logo}
				appName={appName}
				showLogo={showLogo}
			/>
		</AuthScreenLayout>
	);
}

export type { CheckEmailType };
