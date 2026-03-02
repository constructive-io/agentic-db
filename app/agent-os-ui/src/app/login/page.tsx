'use client';

import { Suspense } from 'react';

import { useAuthContext } from '@/lib/auth/auth-context';

import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { LoginScreen } from '@/components/auth/screens/login-screen';

function LoginPageContent() {
	const { login } = useAuthContext();
	return <LoginScreen onLogin={login} />;
}

export default function LoginPage() {
	return (
		<Suspense fallback={<AuthScreenLayout><div className='flex justify-center py-8'>Loading...</div></AuthScreenLayout>}>
			<LoginPageContent />
		</Suspense>
	);
}
