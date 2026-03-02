'use client';

import type { RegisterFormData } from '@/lib/auth/schemas';

import { AuthScreenHeader, type AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';
import { RegisterFormView } from '../register-form-view';

export interface RegisterScreenProps extends AuthBrandingProps {
	onRegister: (formData: RegisterFormData) => Promise<unknown>;
}

export function RegisterScreen({ onRegister, logo, appName, showLogo }: RegisterScreenProps) {
	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			<AuthScreenHeader title='Create an account' description='Get started with your free account' logo={logo} appName={appName} showLogo={showLogo} />
			<RegisterFormView onRegister={onRegister} />
		</AuthScreenLayout>
	);
}
