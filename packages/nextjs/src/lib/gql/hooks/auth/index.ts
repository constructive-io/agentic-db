/**
 * Authentication hooks
 *
 * Uses SDK-generated mutations (codegen'd from api.localhost)
 */

export {
	useLoginSb,
	useRegisterSb,
	useLogoutSb,
	useExtendTokenSb,
	useForgotPasswordSb,
	useResetPasswordSb,
	useSendVerificationEmailSb,
	useVerifyEmailSb,
	useSubmitInviteCodeSb,
	useSubmitOrgInviteCodeSb,
} from './schema-builder';

// Default exports for app-level pages
export { useLoginSb as useLogin } from './schema-builder';
export { useRegisterSb as useRegister } from './schema-builder';
export { useLogoutSb as useLogout } from './schema-builder';
export { useExtendTokenSb as useExtendToken } from './schema-builder';
export { useForgotPasswordSb as useForgotPassword } from './schema-builder';
export { useResetPasswordSb as useResetPassword } from './schema-builder';
export { useSendVerificationEmailSb as useSendVerificationEmail } from './schema-builder';
export { useVerifyEmailSb as useVerifyEmail } from './schema-builder';
export { useSubmitInviteCodeSb as useSubmitInviteCode } from './schema-builder';
export { useSubmitOrgInviteCodeSb as useSubmitOrgInviteCode } from './schema-builder';
