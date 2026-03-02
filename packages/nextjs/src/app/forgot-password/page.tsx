'use client';

import { Suspense } from 'react';

import { useForgotPassword } from '@/lib/gql/hooks/auth';

import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { ForgotPasswordScreen } from '@/components/auth/screens/forgot-password-screen';

function ForgotPasswordPageContent() {
	const forgotPasswordMutation = useForgotPassword();
	return <ForgotPasswordScreen onForgotPassword={(data) => forgotPasswordMutation.mutateAsync(data)} />;
}

export default function ForgotPasswordPage() {
	return (
		<Suspense fallback={<AuthScreenLayout><div className='flex justify-center py-8'>Loading...</div></AuthScreenLayout>}>
			<ForgotPasswordPageContent />
		</Suspense>
	);
}
