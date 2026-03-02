import { z } from 'zod';

/**
 * Password validation schema with strong requirements
 */
const passwordSchema = z
	.string()
	.min(8, 'Password must be at least 8 characters')
	.regex(
		/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]/,
		'Password must contain uppercase, lowercase, number, and special character',
	);

/**
 * Email validation schema
 */
const emailSchema = z.string().email('Please enter a valid email address');

/**
 * Login form validation schema
 */
export const loginSchema = z.object({
	email: emailSchema,
	password: z.string().min(1, 'Password is required'),
	rememberMe: z.boolean().optional(),
});

/**
 * Registration form validation schema
 * Backend only receives email/password - confirmPassword is frontend-only validation
 * Password strength is validated by backend to avoid duplicate/conflicting rules
 */
export const registerSchema = z
	.object({
		email: emailSchema,
		password: z.string().min(1, 'Password is required'),
		confirmPassword: z.string().min(1, 'Please confirm your password'),
		rememberMe: z.boolean().optional(),
	})
	.refine((data) => data.password === data.confirmPassword, {
		message: 'Passwords do not match',
		path: ['confirmPassword'],
	});

/**
 * Forgot password form validation schema
 */
export const forgotPasswordSchema = z.object({
	email: emailSchema,
});

/**
 * Reset password form validation schema
 */
export const resetPasswordSchema = z
	.object({
		password: passwordSchema,
		confirmPassword: z.string(),
		token: z.string().min(1, 'Reset token is required'),
	})
	.refine((data) => data.password === data.confirmPassword, {
		message: 'Passwords do not match',
		path: ['confirmPassword'],
	});

/**
 * TypeScript types inferred from schemas
 */
export type LoginFormData = z.infer<typeof loginSchema>;
export type RegisterFormData = z.infer<typeof registerSchema>;
export type ForgotPasswordFormData = z.infer<typeof forgotPasswordSchema>;
export type ResetPasswordFormData = z.infer<typeof resetPasswordSchema>;
