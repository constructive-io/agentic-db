'use client';

import { Suspense } from 'react';

import { useRegister } from '@/lib/gql/hooks/auth';

import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { RegisterScreen } from '@/components/auth/screens/register-screen';

function RegisterPageContent() {
	const registerMutation = useRegister();
	return <RegisterScreen onRegister={(data) => registerMutation.mutateAsync(data)} />;
}

export default function RegisterPage() {
	return (
		<Suspense fallback={<AuthScreenLayout><div className='flex justify-center py-8'>Loading...</div></AuthScreenLayout>}>
			<RegisterPageContent />
		</Suspense>
	);
}
