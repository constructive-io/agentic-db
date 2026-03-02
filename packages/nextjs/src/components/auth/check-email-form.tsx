'use client';

import * as React from 'react';
import Link from 'next/link';
import type { Route } from 'next';
import { useForm } from '@tanstack/react-form';
import { CheckCircleIcon, MailIcon } from 'lucide-react';

import { z } from 'zod';

import { Button } from '@/components/ui/button';
import { BrandLogo } from '@/components/brand-logo';

import { AuthErrorAlert } from './auth-error-alert';
import { AuthLoadingButton } from './auth-loading-button';
import { FormField } from './form-field';
import type { AuthBrandingProps } from './auth-screen-header';

export type CheckEmailType = 'verification' | 'reset';

const emailSchema = z.string().email('Please enter a valid email address');

interface CheckEmailFormProps extends AuthBrandingProps {
	type: CheckEmailType;
	email: string;
	onSendVerificationEmail?: (email: string) => Promise<void>;
	isSending?: boolean;
	sendSuccess?: boolean;
	error?: string | null;
	onBackToLogin?: () => void;
}

export function CheckEmailForm({
	type,
	email,
	onSendVerificationEmail,
	isSending = false,
	sendSuccess = false,
	error,
	onBackToLogin,
	logo,
	appName,
	showLogo = false, // Status screen - icon is the visual focus
}: CheckEmailFormProps) {
	const title = type === 'verification' ? 'Check your email' : 'Check your email';
	const description =
		type === 'verification'
			? "We've sent a verification link. Open your inbox to continue."
			: "We've sent a password reset link. Open your inbox to continue.";

	const canSend = type === 'verification' && typeof onSendVerificationEmail === 'function';
	const logoElement = logo ?? <BrandLogo variant='icon' className='h-9 w-auto' />;

	const form = useForm({
		defaultValues: {
			email: email || '',
		},
		onSubmit: async ({ value }) => {
			if (!onSendVerificationEmail) return;
			const nextEmail = emailSchema.parse(value.email);
			await onSendVerificationEmail(nextEmail);
		},
	});

	return (
		<div className='space-y-5 text-center'>
			{showLogo ? (
				<div className='flex items-center justify-center'>{logoElement}</div>
			) : null}
			{appName ? (
				<span className='text-primary text-[15px] font-semibold tracking-tight'>{appName}</span>
			) : null}

			<div className='flex justify-center'>
				<div className='bg-primary/10 flex h-14 w-14 items-center justify-center rounded-full'>
					<MailIcon className='text-primary h-7 w-7' />
				</div>
			</div>

			<div className='space-y-1.5'>
				<h2 className='text-xl font-semibold tracking-tight'>{title}</h2>
				<p className='text-muted-foreground text-sm leading-relaxed'>{description}</p>
				{email ? <p className='text-muted-foreground/80 mt-1 text-xs'>Sent to: {email}</p> : null}
			</div>

			<AuthErrorAlert error={error ?? null} />

			{canSend ? (
				<div className='space-y-4 text-left'>
					<form
						onSubmit={(e) => {
							e.preventDefault();
							e.stopPropagation();
							form.handleSubmit();
						}}
						className='space-y-4'
					>
						<form.Field name='email'>
							{(field) => <FormField field={field} label='Email' placeholder='Enter your email' type='email' />}
						</form.Field>

						<div className='space-y-3 pt-1'>
							<AuthLoadingButton
								type='submit'
								className='w-full'
								isLoading={isSending}
								disabled={!form.state.canSubmit || isSending}
							>
								Resend verification email
							</AuthLoadingButton>

							{onBackToLogin ? (
								<Button variant='outline' type='button' onClick={onBackToLogin} className='w-full'>
									Back to sign in
								</Button>
							) : (
								<Button variant='outline' asChild className='w-full'>
									<Link href={'/login' as Route}>Back to sign in</Link>
								</Button>
							)}
						</div>
					</form>

					{sendSuccess ? (
						<div className='flex items-center justify-center gap-2 text-sm text-success'>
							<CheckCircleIcon className='h-4 w-4' />
							<span>Verification email sent</span>
						</div>
					) : null}
				</div>
			) : (
				<div className='pt-1'>
					{onBackToLogin ? (
						<Button variant='outline' type='button' onClick={onBackToLogin} className='w-full'>
							Back to sign in
						</Button>
					) : (
						<Button variant='outline' asChild className='w-full'>
							<Link href={'/login' as Route}>Back to sign in</Link>
						</Button>
					)}
				</div>
			)}
		</div>
	);
}
