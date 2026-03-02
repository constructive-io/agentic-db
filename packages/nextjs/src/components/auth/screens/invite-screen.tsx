'use client';

import * as React from 'react';
import type { Route } from 'next';
import Link from 'next/link';
import { Check, X } from 'lucide-react';

import { Button } from '@/components/ui/button';
import { BrandLogo } from '@/components/brand-logo';

import { AuthScreenHeader, type AuthBrandingProps } from '../auth-screen-header';
import { AuthScreenLayout } from '../auth-screen-layout';

export type InviteScreenState =
	| { status: 'loading' }
	| { status: 'no-token' }
	| { status: 'needs-auth' }
	| { status: 'email-mismatch'; inviteEmail: string; currentEmail: string }
	| { status: 'ready' }
	| { status: 'submitting' }
	| { status: 'success' }
	| { status: 'error'; message: string };

export interface InviteScreenProps extends AuthBrandingProps {
	state: InviteScreenState;
	onAccept?: () => void;
	onCancel?: () => void;
	onBackToHome?: () => void;
	homeHref?: Route;
}

export function InviteScreen({
	state,
	onAccept,
	onCancel,
	onBackToHome,
	homeHref = '/' as Route,
	logo,
	appName,
	showLogo = false,
}: InviteScreenProps) {
	const [countdown, setCountdown] = React.useState(10);

	// Countdown timer for success state
	React.useEffect(() => {
		if (state.status === 'success') {
			if (countdown > 0) {
				const timer = setTimeout(() => setCountdown(countdown - 1), 1000);
				return () => clearTimeout(timer);
			} else {
				onBackToHome?.();
			}
		}
	}, [state.status, countdown, onBackToHome]);

	return (
		<AuthScreenLayout logo={logo} appName={appName} showLogo={showLogo}>
			{state.status === 'loading' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<BrandLogo variant='icon' className='h-16 w-auto' />
					</div>
					<AuthScreenHeader title='Loading...' logo={logo} appName={appName} showLogo={false} />
					<div className='text-muted-foreground text-center text-sm'>Please wait…</div>
				</>
			) : null}

			{state.status === 'no-token' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<div className='bg-destructive/10 rounded-full p-4'>
							<X className='text-destructive size-8' />
						</div>
					</div>
					<AuthScreenHeader
						title='Invalid invite'
						description='This invite link is missing a token.'
						logo={logo}
						appName={appName}
						showLogo={false}
					/>
					<Button asChild variant='outline' className='w-full'>
						<Link href={homeHref}>Back to home</Link>
					</Button>
				</>
			) : null}

			{state.status === 'needs-auth' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<BrandLogo variant='icon' className='h-16 w-auto' />
					</div>
					<AuthScreenHeader
						title='Authentication required'
						description='Please sign in to accept this invitation.'
						logo={logo}
						appName={appName}
						showLogo={false}
					/>
					<Button asChild variant='outline' className='w-full'>
						<Link href={homeHref}>Back to home</Link>
					</Button>
				</>
			) : null}

			{state.status === 'email-mismatch' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<div className='bg-destructive/10 rounded-full p-4'>
							<X className='text-destructive size-8' />
						</div>
					</div>
					<AuthScreenHeader title='Email mismatch' logo={logo} appName={appName} showLogo={false} />
					<div className='space-y-3 text-center'>
						<p className='text-muted-foreground text-sm'>
							Please sign in with the correct account to accept this invitation.
						</p>
						<p className='text-muted-foreground text-sm'>
							You&apos;re currently signed in as <span className='text-foreground font-medium'>{state.currentEmail}</span>
						</p>
					</div>
					<Button onClick={onBackToHome} variant='outline' className='w-full'>
						Back to home
					</Button>
				</>
			) : null}

			{state.status === 'ready' || state.status === 'submitting' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<BrandLogo variant='icon' className='h-16 w-auto' />
					</div>
					<AuthScreenHeader
						title='Accept invitation?'
						description="By clicking Accept, you'll join the organization or app associated with this invite."
						logo={logo}
						appName={appName}
						showLogo={false}
					/>
					<div className='space-y-2'>
						<Button className='w-full' onClick={onAccept} disabled={state.status === 'submitting' || !onAccept}>
							{state.status === 'submitting' ? 'Accepting…' : 'Accept invite'}
						</Button>
						<Button
							variant='outline'
							className='w-full'
							onClick={onCancel}
							disabled={state.status === 'submitting' || !onCancel}
						>
							Cancel
						</Button>
					</div>
				</>
			) : null}

			{state.status === 'success' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<div className='rounded-full bg-green-500/10 p-4'>
							<Check className='size-8 text-green-600' />
						</div>
					</div>
					<AuthScreenHeader
						title='Invitation accepted!'
						description={`Redirecting to home in ${countdown} seconds...`}
						logo={logo}
						appName={appName}
						showLogo={false}
					/>
					<Button onClick={onBackToHome} variant='outline' className='w-full'>
						Back to home now
					</Button>
				</>
			) : null}

			{state.status === 'error' ? (
				<>
					<div className='mb-6 flex justify-center'>
						<div className='bg-destructive/10 rounded-full p-4'>
							<X className='text-destructive size-8' />
						</div>
					</div>
					<AuthScreenHeader
						title="Couldn't accept invite"
						description={state.message}
						logo={logo}
						appName={appName}
						showLogo={false}
					/>
					<Button asChild variant='outline' className='w-full'>
						<Link href={homeHref}>Back to home</Link>
					</Button>
				</>
			) : null}
		</AuthScreenLayout>
	);
}
