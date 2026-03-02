'use client';

import { useEffect, useRef, useState } from 'react';
import type { Route } from 'next';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
import { useForm } from '@tanstack/react-form';

import { parseGraphQLError } from '@/lib/auth/auth-errors';
import type { LoginFormData } from '@/lib/auth/schemas';
import { loginSchema } from '@/lib/auth/schemas';
import { Button } from '@/components/ui/button';
import { Checkbox } from '@/components/ui/checkbox';
import { buildQueryString, INVITE_QUERY_PARAMS } from '@/app/invite/page';

import { AuthErrorAlert } from './auth-error-alert';
import { AuthLoadingButton } from './auth-loading-button';
import { FormField } from './form-field';

export interface LoginFormViewProps {
	onLogin: (credentials: LoginFormData) => Promise<void>;
	onShowForgot?: () => void;
	onShowRegister?: () => void;
}

export function LoginFormView({ onLogin, onShowForgot, onShowRegister }: LoginFormViewProps) {
	const [error, setError] = useState<string | null>(null);
	const [isSubmitting, setIsSubmitting] = useState(false);
	const searchParams = useSearchParams();
	const passwordInputRef = useRef<HTMLInputElement>(null);

	const emailFromQuery = searchParams?.get(INVITE_QUERY_PARAMS.EMAIL) || '';

	const form = useForm({
		defaultValues: {
			email: emailFromQuery,
			password: '',
			rememberMe: true,
		},
		onSubmit: async ({ value }) => {
			setError(null);
			setIsSubmitting(true);

			try {
				const validatedData = loginSchema.parse(value);
				await onLogin(validatedData);
			} catch (err) {
				setError(parseGraphQLError(err).message);
			} finally {
				setIsSubmitting(false);
			}
		},
		validators: {
			onChange: ({ value }) => {
				const result = loginSchema.safeParse(value);
				if (!result.success) {
					return result.error.issues.map((issue) => issue.message).join(', ');
				}
				return undefined;
			},
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
							testId='auth-login-email'
						/>
					)}
				</form.Field>

				<form.Field
					name='password'
					validators={{
						onChange: ({ value }) => {
							if (!value) return 'Password is required';
							return undefined;
						},
					}}
				>
					{(field) => (
						<FormField
							field={field}
							label='Password'
							placeholder='Enter your password'
							type='password'
							inputRef={passwordInputRef}
							testId='auth-login-password'
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

				<div className='space-y-3 pt-2'>
					<AuthLoadingButton
						type='submit'
						className='w-full'
						isLoading={isSubmitting}
						disabled={isSubmitting}
						data-testid='auth-login-submit'
					>
						Sign In
					</AuthLoadingButton>

					<div className='text-center'>
						{onShowForgot ? (
							<Button
								variant='link'
								className='text-muted-foreground hover:text-foreground h-auto p-0 text-sm'
								onClick={onShowForgot}
								type='button'
								data-testid='auth-forgot-link'
							>
								Forgot your password?
							</Button>
						) : (
							<Button
								variant='link'
								asChild
								className='text-muted-foreground hover:text-foreground h-auto p-0 text-sm'
								data-testid='auth-forgot-link'
							>
								<Link href={'/forgot-password' as Route}>Forgot your password?</Link>
							</Button>
						)}
					</div>
				</div>
			</form>

			<div className='border-border/40 border-t pt-5'>
				<p className='text-muted-foreground text-center text-sm'>
					Don&apos;t have an account?{' '}
					{onShowRegister ? (
						<Button
							variant='link'
							className='text-primary hover:text-primary/80 h-auto p-0 font-medium'
							onClick={onShowRegister}
							type='button'
						>
							Sign up
						</Button>
					) : (
						<Button variant='link' asChild className='text-primary hover:text-primary/80 h-auto p-0 font-medium'>
							<Link href={`/register${buildQueryString(searchParams)}` as Route}>Sign up</Link>
						</Button>
					)}
				</p>
			</div>
		</div>
	);
}
