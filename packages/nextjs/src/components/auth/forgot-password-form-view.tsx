'use client';

import { useState } from 'react';
import type { Route } from 'next';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { useForm } from '@tanstack/react-form';
import { CheckCircleIcon } from 'lucide-react';

import { parseGraphQLError } from '@/lib/auth/auth-errors';
import type { ForgotPasswordFormData } from '@/lib/auth/schemas';
import { forgotPasswordSchema } from '@/lib/auth/schemas';
import { getHomePath } from '@/app-config';

import { AuthErrorAlert } from './auth-error-alert';
import { AuthLoadingButton } from './auth-loading-button';
import { AuthScreenHeader } from './auth-screen-header';
import { FormField } from './form-field';

export interface ForgotPasswordFormViewProps {
	onForgotPassword: (formData: ForgotPasswordFormData) => Promise<unknown>;
	onShowLogin?: () => void;
}

export function ForgotPasswordFormView({ onForgotPassword, onShowLogin }: ForgotPasswordFormViewProps) {
	const [error, setError] = useState<string | null>(null);
	const [isSubmitting, setIsSubmitting] = useState(false);
	const [isSuccess, setIsSuccess] = useState(false);

	const form = useForm({
		defaultValues: {
			email: '',
		},
		onSubmit: async ({ value }) => {
			setError(null);
			setIsSubmitting(true);

			try {
				const validatedData = forgotPasswordSchema.parse(value);
				await onForgotPassword(validatedData);
				setIsSuccess(true);
			} catch (err) {
				setError(parseGraphQLError(err).message);
			} finally {
				setIsSubmitting(false);
			}
		},
		validators: {
			onChange: ({ value }) => {
				const result = forgotPasswordSchema.safeParse(value);
				if (!result.success) {
					return result.error.issues.map((issue) => issue.message).join(', ');
				}
				return undefined;
			},
		},
	});

	if (isSuccess) {
		return (
			<div className='space-y-5 text-center'>
				<div className='flex justify-center'>
					<div className='bg-success/10 flex h-12 w-12 items-center justify-center rounded-full'>
						<CheckCircleIcon className='text-success h-6 w-6' />
					</div>
				</div>
				<div className='space-y-1.5'>
					<h3 className='text-lg font-semibold'>Check your email</h3>
					<p className='text-muted-foreground text-sm'>We&apos;ve sent a password reset link to your email address.</p>
				</div>
				<div className='pt-1'>
					{onShowLogin ? (
						<Button variant='outline' type='button' onClick={onShowLogin} className='w-full'>
							Back to sign in
						</Button>
					) : (
						<Button variant='outline' asChild className='w-full'>
							<Link href={getHomePath() as Route}>Back to sign in</Link>
						</Button>
					)}
				</div>
			</div>
		);
	}

	return (
		<div className='space-y-5'>
			<AuthScreenHeader title='Reset your password' description="We'll send you a password reset link" />

			<form
				onSubmit={(e) => {
					e.preventDefault();
					e.stopPropagation();
					form.handleSubmit();
				}}
				className='space-y-4 px-8'
			>
				<AuthErrorAlert error={error} />
				<form.Field
					name='email'
					validators={{
						onChange: ({ value }) => {
							if (!value) return 'Email is required';
							if (!/\S+@\S+\.\S+/.test(value)) return 'Please enter a valid email';
							return undefined;
						},
					}}
				>
					{(field) => (
						<FormField
							field={field}
							label='Email'
							placeholder='Enter your email'
							type='email'
							testId='auth-forgot-email'
						/>
					)}
				</form.Field>

				<div className='pt-2'>
					<AuthLoadingButton
						type='submit'
						className='w-full'
						isLoading={isSubmitting}
						disabled={isSubmitting}
						data-testid='auth-forgot-submit'
					>
						Send Reset Link
					</AuthLoadingButton>
				</div>
			</form>

			<div className='text-muted-foreground text-center text-sm'>
				Remember your password?{' '}
				{onShowLogin ? (
					<Button
						variant='link'
						className='text-primary hover:text-primary/80 h-auto p-0 font-medium'
						onClick={onShowLogin}
						type='button'
					>
						Sign in
					</Button>
				) : (
					<Button variant='link' asChild className='text-primary hover:text-primary/80 h-auto p-0 font-medium'>
						<Link href={getHomePath() as Route}>Sign in</Link>
					</Button>
				)}
			</div>
		</div>
	);
}
