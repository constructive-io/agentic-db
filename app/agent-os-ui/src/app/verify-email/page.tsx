'use client';

import * as React from 'react';
import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';

import { useVerifyEmail } from '@/lib/gql/hooks/auth';
import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { VerifyEmailScreen } from '@/components/auth/screens/verify-email-screen';
import type { VerifyEmailStatus } from '@/components/auth/verify-email-result';

function VerifyEmailPageContent() {
	const searchParams = useSearchParams();
	const token = searchParams?.get('verification_token') || null;
	const emailId = searchParams?.get('email_id') || null;

	const verifyMutation = useVerifyEmail();

	React.useEffect(() => {
		if (!emailId || !token) return;
		if (verifyMutation.isPending || verifyMutation.isSuccess || verifyMutation.isError) return;
		verifyMutation.mutate({ emailId, token });
		// eslint-disable-next-line react-hooks/exhaustive-deps
	}, [emailId, token]);

	const status: VerifyEmailStatus = React.useMemo(() => {
		if (!emailId || !token) return 'invalid';
		if (verifyMutation.isPending) return 'loading';
		if (verifyMutation.isSuccess) return 'success';
		if (verifyMutation.isError) return 'error';
		return 'loading';
	}, [emailId, token, verifyMutation.isPending, verifyMutation.isSuccess, verifyMutation.isError]);

	const errorMessage =
		status === 'error'
			? verifyMutation.error instanceof Error
				? verifyMutation.error.message
				: 'An unexpected error occurred'
			: null;

	return <VerifyEmailScreen status={status} errorMessage={errorMessage} />;
}

export default function VerifyEmailPage() {
	return (
		<Suspense
			fallback={
				<AuthScreenLayout>
					<div className='flex justify-center py-8'>Loading...</div>
				</AuthScreenLayout>
			}
		>
			<VerifyEmailPageContent />
		</Suspense>
	);
}
