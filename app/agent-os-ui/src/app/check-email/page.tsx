'use client';

import * as React from 'react';
import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';

import { useSendVerificationEmail } from '@/lib/gql/hooks/auth';
import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { CheckEmailScreen, type CheckEmailType } from '@/components/auth/check-email-screen';

function CheckEmailPageContent() {
	const searchParams = useSearchParams();
	const type = (searchParams?.get('type') as CheckEmailType) || 'verification';
	const email = searchParams?.get('email') || '';

	const sendVerificationMutation = useSendVerificationEmail();
	const [resendSuccess, setResendSuccess] = React.useState(false);
	const [error, setError] = React.useState<string | null>(null);

	const handleSend = async (nextEmail: string) => {
		setError(null);
		setResendSuccess(false);
		try {
			await sendVerificationMutation.mutateAsync({ email: nextEmail });
			setResendSuccess(true);
		} catch (err) {
			setError(err instanceof Error ? err.message : 'Failed to send verification email. Please try again.');
		}
	};

	return (
		<CheckEmailScreen
			type={type}
			email={email}
			onSendVerificationEmail={handleSend}
			isSending={sendVerificationMutation.isPending}
			sendSuccess={resendSuccess}
			error={error}
		/>
	);
}

export default function CheckEmailPage() {
	return (
		<Suspense
			fallback={
				<AuthScreenLayout>
					<div className='flex justify-center py-8'>Loading...</div>
				</AuthScreenLayout>
			}
		>
			<CheckEmailPageContent />
		</Suspense>
	);
}
