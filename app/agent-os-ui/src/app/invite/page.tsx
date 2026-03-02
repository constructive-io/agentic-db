'use client';

import * as React from 'react';
import { Suspense } from 'react';
import type { Route } from 'next';
import { useRouter, useSearchParams } from 'next/navigation';

import { useAuthContext } from '@/lib/auth/auth-context';
import { DataError } from '@/lib/gql/error-handler';
import { useSubmitInviteCode } from '@/lib/gql/hooks/auth';
import { useSubmitOrgInviteCode } from '@/lib/gql/hooks/auth';
import { useAccountProfile } from '@/lib/gql/hooks/schema-builder/account/use-account-profile';
import { AuthScreenLayout } from '@/components/auth/auth-screen-layout';
import { InviteScreen, type InviteScreenState } from '@/components/auth/screens/invite-screen';

// Query parameter keys - exported for reuse across components
export const INVITE_QUERY_PARAMS = {
	INVITE_TOKEN: 'invite_token',
	EMAIL: 'email',
	TYPE: 'type',
} as const;

/**
 * Utility function to build query string from URLSearchParams
 * @param searchParams - URLSearchParams object
 * @returns Query string with leading '?' or empty string
 */
export function buildQueryString(searchParams: URLSearchParams | null): string {
	if (!searchParams) return '';
	const params = new URLSearchParams();
	searchParams.forEach((value, key) => {
		params.set(key, value);
	});
	return params.toString() ? `?${params.toString()}` : '';
}

type InviteType = 'org' | 'app';

const ERROR_MESSAGES: Record<string, string> = {
	OBJECT_NOT_FOUND: 'Your session has expired. Please sign in again.',
	INVITE_NOT_FOUND: 'This invite is invalid or has expired.',
	INVITE_LIMIT: 'This invite has reached its usage limit.',
	INVITE_EMAIL_NOT_FOUND: 'This invite was sent to a different email address.',
};

function getSafeInviteType(value: string | null): InviteType {
	return value === 'app' ? 'app' : 'org';
}

function getInviteErrorCode(error: unknown): string {
	if (error instanceof DataError) {
		return error.code || error.message;
	}
	if (error instanceof Error) {
		return error.message;
	}
	return 'UNKNOWN';
}

function InvitePageContent() {
	const router = useRouter();
	const searchParams = useSearchParams();
	const { isAuthenticated, isLoading: isAuthLoading, user } = useAuthContext();

	const submitInviteCode = useSubmitInviteCode();
	const submitOrgInviteCode = useSubmitOrgInviteCode();

	// Fetch user profile to get email
	const { profile, isLoading: isProfileLoading } = useAccountProfile({
		userId: user?.id || '',
		enabled: isAuthenticated && !!user?.id,
	});

	const [tokenAndType, setTokenAndType] = React.useState<{ token: string; type: InviteType } | null>(null);
	const [state, setState] = React.useState<InviteScreenState>({ status: 'loading' });

	React.useEffect(() => {
		const token = searchParams?.get(INVITE_QUERY_PARAMS.INVITE_TOKEN) || '';
		const type = getSafeInviteType(searchParams?.get(INVITE_QUERY_PARAMS.TYPE));
		const inviteEmail = searchParams?.get(INVITE_QUERY_PARAMS.EMAIL) || '';

		if (!token) {
			setTokenAndType(null);
			setState({ status: 'no-token' });
			return;
		}

		setTokenAndType({ token, type });

		if (isAuthLoading) {
			setState({ status: 'loading' });
			return;
		}
		if (!isAuthenticated) {
			setState({ status: 'needs-auth' });
			return;
		}

		// Wait for user object and profile to be loaded before proceeding
		if (!user || isProfileLoading) {
			setState({ status: 'loading' });
			return;
		}

		const userEmail = profile?.primaryEmail?.email;

		// Check if invite email matches current user's email (only if both emails are present)
		if (inviteEmail && userEmail && inviteEmail.toLowerCase() !== userEmail.toLowerCase()) {
			setState({ status: 'email-mismatch', inviteEmail, currentEmail: userEmail });
			return;
		}

		setState({ status: 'ready' });
	}, [searchParams, isAuthenticated, isAuthLoading, user, isProfileLoading, profile?.primaryEmail?.email]);

	async function handleAccept() {
		if (!tokenAndType) return;
		setState({ status: 'submitting' });

		try {
			if (tokenAndType.type === 'org') {
				await submitOrgInviteCode.mutateAsync(tokenAndType.token);
			} else {
				await submitInviteCode.mutateAsync(tokenAndType.token);
			}

			setState({ status: 'success' });
		} catch (err) {
			const code = getInviteErrorCode(err);
			setState({ status: 'error', message: ERROR_MESSAGES[code] || 'Something went wrong. Please try again.' });
		}
	}

	function handleCancel() {
		router.push('/' as Route);
	}

	function handleBackToHome() {
		router.push('/' as Route);
	}

	return <InviteScreen state={state} onAccept={handleAccept} onCancel={handleCancel} onBackToHome={handleBackToHome} />;
}

export default function InvitePage() {
	return (
		<Suspense
			fallback={
				<AuthScreenLayout>
					<div className='flex justify-center py-8'>Loading...</div>
				</AuthScreenLayout>
			}
		>
			<InvitePageContent />
		</Suspense>
	);
}
