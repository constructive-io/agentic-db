/**
 * Schema-builder auth hooks
 *
 * These hooks use SDK-generated mutations (codegen'd from the live backend schema)
 * and wrap them with token management, auth state updates, and business logic.
 */

export { useLoginSb } from './use-login-sb';
export { useRegisterSb } from './use-register-sb';
export { useLogoutSb } from './use-logout-sb';
export { useExtendTokenSb } from './use-extend-token-sb';
export { useForgotPasswordSb } from './use-forgot-password-sb';
export { useResetPasswordSb } from './use-reset-password-sb';
export { useSendVerificationEmailSb } from './use-send-verification-email-sb';
export { useVerifyEmailSb } from './use-verify-email-sb';
export { useSubmitInviteCodeSb } from './use-submit-invite-code-sb';
export { useSubmitOrgInviteCodeSb } from './use-submit-org-invite-code-sb';
