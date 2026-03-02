'use client';
import Link from 'next/link';
import type { Route } from 'next';
import { AlertCircleIcon, CheckCircleIcon, LoaderIcon, XCircleIcon } from 'lucide-react';

import { Button } from '@/components/ui/button';
import { BrandLogo } from '@/components/brand-logo';

import { AuthErrorAlert } from './auth-error-alert';
import type { AuthBrandingProps } from './auth-screen-header';

export type VerifyEmailStatus = 'loading' | 'success' | 'error' | 'invalid';

interface VerifyEmailResultProps extends AuthBrandingProps {
	status: VerifyEmailStatus;
	errorMessage?: string | null;
	onGoToLogin?: () => void;
}

const STATUS_CONTENT = {
	loading: {
		icon: LoaderIcon,
		iconClass: 'text-primary animate-spin',
		bgClass: 'bg-primary/10',
		title: 'Verifying your email...',
		description: 'Please wait while we verify your email address.',
	},
	success: {
		icon: CheckCircleIcon,
		iconClass: 'text-success',
		bgClass: 'bg-success/10',
		title: 'Email verified!',
		description: 'Your email has been successfully verified. You can now sign in to your account.',
	},
	error: {
		icon: XCircleIcon,
		iconClass: 'text-destructive',
		bgClass: 'bg-destructive/10',
		title: 'Verification failed',
		description: 'The verification link may have expired or is invalid. Please try again or request a new link.',
	},
	invalid: {
		icon: AlertCircleIcon,
		iconClass: 'text-warning',
		bgClass: 'bg-warning/10',
		title: 'Invalid link',
		description: 'This verification link is missing required information. Please check your email for the correct link.',
	},
} as const;


export function VerifyEmailResult({
	status,
	errorMessage,
	onGoToLogin,
	logo,
	appName,
	showLogo = false, // Status screen - status icon is the visual focus
}: VerifyEmailResultProps) {
	const content = STATUS_CONTENT[status];
	const Icon = content.icon;
	const logoElement = logo ?? <BrandLogo variant='icon' className='h-9 w-auto' />;

	return (
		<div className='space-y-5 text-center'>
			{showLogo ? (
				<div className='flex items-center justify-center'>{logoElement}</div>
			) : null}
			{appName ? (
				<span className='text-primary text-[15px] font-semibold tracking-tight'>{appName}</span>
			) : null}

			<div className='flex justify-center'>
				<div className={`flex h-14 w-14 items-center justify-center rounded-full ${content.bgClass}`}>
					<Icon className={`h-7 w-7 ${content.iconClass}`} />
				</div>
			</div>

			<div className='space-y-1.5'>
				<h2 className='text-xl font-semibold tracking-tight'>{content.title}</h2>
				<p className='text-muted-foreground text-sm leading-relaxed text-pretty'>{content.description}</p>
			</div>

			{status === 'error' && errorMessage ? (
				<AuthErrorAlert error={errorMessage} />
			) : null}

			{status !== 'loading' ? (
				<div className='pt-1'>
					{status === 'success' ? (
						onGoToLogin ? (
							<Button className='w-full' onClick={onGoToLogin}>
								Continue to sign in
							</Button>
						) : (
							<Button asChild className='w-full'>
								<Link href={'/login' as Route}>Continue to sign in</Link>
							</Button>
						)
					) : onGoToLogin ? (
						<Button variant='outline' className='w-full' onClick={onGoToLogin}>
							Back to sign in
						</Button>
					) : (
						<Button variant='outline' asChild className='w-full'>
							<Link href={'/login' as Route}>Back to sign in</Link>
						</Button>
					)}
				</div>
			) : null}
		</div>
	);
}
