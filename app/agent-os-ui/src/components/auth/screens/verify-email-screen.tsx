'use client';

import type { AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';
import { VerifyEmailResult, type VerifyEmailStatus } from '../verify-email-result';

export interface VerifyEmailScreenProps extends AuthBrandingProps {
	status: VerifyEmailStatus;
	errorMessage?: string | null;
}

export function VerifyEmailScreen({ status, errorMessage, logo, appName, showLogo = false }: VerifyEmailScreenProps) {
	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<VerifyEmailResult status={status} errorMessage={errorMessage} logo={logo} appName={appName} showLogo={showLogo} />
		</AuthScreenLayout>
	);
}
