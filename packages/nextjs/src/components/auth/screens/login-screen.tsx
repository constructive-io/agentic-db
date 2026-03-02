'use client';

import type { LoginFormData } from '@/lib/auth/schemas';

import { AuthScreenHeader, type AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';
import { LoginFormView } from '../login-form-view';

export interface LoginScreenProps extends AuthBrandingProps {
	onLogin: (credentials: LoginFormData) => Promise<void>;
}

export function LoginScreen({ onLogin, logo, appName, showLogo }: LoginScreenProps) {
	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<AuthScreenHeader title='Welcome back' description='Sign in to your account' logo={logo} appName={appName} showLogo={showLogo} />
			<LoginFormView onLogin={onLogin} />
		</AuthScreenLayout>
	);
}
