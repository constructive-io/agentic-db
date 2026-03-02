'use client';

import { Suspense, useEffect, useState } from 'react';
import { useSearchParams } from 'next/navigation';

import { ForgotPasswordForm } from '@/components/auth/forgot-password-form';
import { LoginForm } from '@/components/auth/login-form';
import { RegisterForm } from '@/components/auth/register-form';
import { ResetPasswordForm } from '@/components/auth/reset-password-form';

import { AuthScreenHeader, type AuthBrandingProps } from './auth-screen-header';
import { AuthScreenLayout } from './auth-screen-layout';

type AuthMode = 'login' | 'register' | 'forgot' | 'reset';

const AUTH_CONTENT: Record<AuthMode, { title: string; description: string }> = {
	login: {
		title: 'Welcome back',
		description: 'Sign in to your account',
	},
	register: {
		title: 'Create an account',
		description: 'Get started with your free account',
	},
	forgot: {
		title: 'Reset your password',
		description: "We'll send you a password reset link",
	},
	reset: {
		title: 'Set a new password',
		description: 'Enter your new password below',
	},
} as const;

export type AuthEmbeddedProps = AuthBrandingProps;

export function AuthEmbedded({ logo, appName, showLogo = false }: AuthEmbeddedProps = {}) {
	return (
		<Suspense
			fallback={
				<div data-testid='auth-embedded' className='h-full w-full flex-1'>
					<AuthScreenLayout fill='parent' showLogo={false}>
						<div className='text-muted-foreground text-center text-sm'>Loading...</div>
					</AuthScreenLayout>
				</div>
			}
		>
			<AuthEmbeddedContent logo={logo} appName={appName} showLogo={showLogo} />
		</Suspense>
	);
}

type AuthEmbeddedContentProps = AuthBrandingProps;

function AuthEmbeddedContent({ logo, appName, showLogo = false }: AuthEmbeddedContentProps) {
	const search = useSearchParams();
	const resetToken = search?.get('reset_token') || search?.get('token') || '';
	const roleId = search?.get('role_id') || '';
	const initialMode: AuthMode = resetToken ? 'reset' : 'login';
	const [mode, setMode] = useState<AuthMode>(initialMode);

	useEffect(() => {
		if (resetToken) setMode('reset');
	}, [resetToken]);

	const { title, description } = AUTH_CONTENT[mode];

	return (
		<div data-testid='auth-embedded' className='h-full w-full flex-1'>
			<AuthScreenLayout fill='parent' logo={logo} appName={appName} showLogo={showLogo}>
				<AuthScreenHeader title={title} description={description} logo={logo} appName={appName} showLogo={showLogo} />

				<div>
					{mode === 'login' && (
						<LoginForm onShowForgot={() => setMode('forgot')} onShowRegister={() => setMode('register')} />
					)}
					{mode === 'register' && <RegisterForm onShowLogin={() => setMode('login')} />}
					{mode === 'forgot' && <ForgotPasswordForm onShowLogin={() => setMode('login')} />}
					{mode === 'reset' && (
						<ResetPasswordForm resetToken={resetToken} roleId={roleId} onShowLogin={() => setMode('login')} />
					)}
				</div>
			</AuthScreenLayout>
		</div>
	);
}
