'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';

import { useResetPassword } from '@/lib/gql/hooks/auth';
import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { ResetPasswordScreen } from '@/components/auth/screens/reset-password-screen';

function ResetPasswordPageContent() {
	const searchParams = useSearchParams();
	const resetToken = searchParams?.get('reset_token') || '';
	const roleId = searchParams?.get('role_id') || '';
	const resetPasswordMutation = useResetPassword();

	return (
		<ResetPasswordScreen
			resetToken={resetToken}
			roleId={roleId}
			onResetPassword={(input) => resetPasswordMutation.mutateAsync(input)}
		/>
	);
}

export default function ResetPasswordPage() {
	return (
		<Suspense
			fallback={
				<AuthScreenLayout>
					<div className='flex justify-center py-8'>Loading...</div>
				</AuthScreenLayout>
			}
		>
			<ResetPasswordPageContent />
		</Suspense>
	);
}
