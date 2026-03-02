'use client';

import { useEffect, useRef, useState } from 'react';
import type { Route } from 'next';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
import { useForm } from '@tanstack/react-form';

import { parseGraphQLError } from '@/lib/auth/auth-errors';
import type { RegisterFormData } from '@/lib/auth/schemas';
import { registerSchema } from '@/lib/auth/schemas';
import { Button } from '@/components/ui/button';
import { Checkbox } from '@/components/ui/checkbox';
import { buildQueryString, INVITE_QUERY_PARAMS } from '@/app/invite/page';

import { AuthErrorAlert } from './auth-error-alert';
import { AuthLoadingButton } from './auth-loading-button';
import { FormField } from './form-field';

export interface RegisterFormViewProps {
	onRegister: (formData: RegisterFormData) => Promise<unknown>;
	onShowLogin?: () => void;
}

export function RegisterFormView({ onRegister, onShowLogin }: RegisterFormViewProps) {
	const [error, setError] = useState<string | null>(null);
	const [isSubmitting, setIsSubmitting] = useState(false);
	const searchParams = useSearchParams();
	const passwordInputRef = useRef<HTMLInputElement>(null);

	const emailFromQuery = searchParams?.get(INVITE_QUERY_PARAMS.EMAIL) || '';

	const form = useForm({
		defaultValues: {
			email: emailFromQuery,
			password: '',
			confirmPassword: '',
			rememberMe: true,
		},
		onSubmit: async ({ value }) => {
			setError(null);
			setIsSubmitting(true);

			try {
				const validatedData = registerSchema.parse(value);
				await onRegister(validatedData);
			} catch (err) {
				setError(parseGraphQLError(err).message);
			} finally {
				setIsSubmitting(false);
			}
		},
	});

	useEffect(() => {
		if (emailFromQuery && passwordInputRef.current) {
			passwordInputRef.current.focus();
		}
	}, [emailFromQuery]);

	return (
		<div className='space-y-5'>
			<form
				onSubmit={(e) => {
					e.preventDefault();
					e.stopPropagation();
					form.handleSubmit();
				}}
				className='space-y-4 px-8 pb-2'
			>
				<AuthErrorAlert error={error} />
				<form.Field name='email'>
					{(field) => (
						<FormField
							field={field}
							label='Email'
							placeholder='Enter your email'
							type='email'
							testId='auth-signup-email'
						/>
					)}
				</form.Field>

				<form.Field name='password'>
					{(field) => (
						<FormField
							field={field}
							label='Password'
							placeholder='Enter your password'
							type='password'
							inputRef={passwordInputRef}
							testId='auth-signup-password'
						/>
					)}
				</form.Field>

				<form.Field name='confirmPassword'>
					{(field) => (
						<FormField
							field={field}
							label='Confirm Password'
							placeholder='Confirm your password'
							type='password'
							testId='auth-signup-confirm-password'
						/>
					)}
				</form.Field>

				<form.Field name='rememberMe'>
					{(field) => (
						<div className='flex items-center space-x-2'>
							<Checkbox
								id='rememberMe'
								checked={field.state.value}
								onCheckedChange={(checked) => {
									field.handleChange(checked === true);
								}}
							/>
							<label
								htmlFor='rememberMe'
								className='text-sm leading-none font-medium peer-disabled:cursor-not-allowed peer-disabled:opacity-70'
							>
								Remember me
							</label>
						</div>
					)}
				</form.Field>

				<div className='pt-2'>
					<AuthLoadingButton
						type='submit'
						className='w-full'
						isLoading={isSubmitting}
						disabled={isSubmitting}
						data-testid='auth-signup-submit'
					>
						Create Account
					</AuthLoadingButton>
				</div>
			</form>

			<div className='border-border/40 border-t pt-5'>
				<p className='text-muted-foreground text-center text-sm'>
					Already have an account?{' '}
					{onShowLogin ? (
						<Button
							variant='link'
							className='text-primary hover:text-primary/80 h-auto p-0 font-medium'
							onClick={onShowLogin}
							type='button'
							data-testid='auth-signup-login-link'
						>
							Sign in
						</Button>
					) : (
						<Button
							variant='link'
							asChild
							className='text-primary hover:text-primary/80 h-auto p-0 font-medium'
							data-testid='auth-signup-login-link'
						>
							<Link href={`/login${buildQueryString(searchParams)}` as Route}>Sign in</Link>
						</Button>
					)}
				</p>
			</div>
		</div>
	);
}
