import { createQueryKeys } from '@lukemorales/query-key-factory';

/**
 * Authentication query keys using query-key-factory
 */
export const authKeys = createQueryKeys('auth', {
	signIn: null,
	signOut: null,
	extendToken: null,
	signUp: null,
	forgotPassword: null,
	resetPassword: null,
	sendVerificationEmail: null,
	verifyEmail: null,
});
