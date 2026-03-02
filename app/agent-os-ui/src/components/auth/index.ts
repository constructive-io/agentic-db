/**
 * Authentication components exports
 */

// Core components
export { AuthCard } from './auth-card';
export { AuthHeader } from './auth-header';
export { AuthFooter } from './auth-footer';
export { AuthLoadingButton } from './auth-loading-button';
export { AuthErrorAlert } from './auth-error-alert';

// Screen layout primitives
export { AuthScreenHeader, type AuthBrandingProps } from './auth-screen-header';
export { AuthScreenLayout, type AuthScreenLayoutProps } from './auth-screen-layout';
export { AuthLegalFooter, type AuthLegalFooterProps, type LegalLink } from './auth-legal-footer';

// Form components
export { FormField } from './form-field';
export { PasswordStrength } from './password-strength';

// Form implementations
export { LoginForm } from './login-form';
export { RegisterForm } from './register-form';
export { ForgotPasswordForm } from './forgot-password-form';
export { ResetPasswordForm } from './reset-password-form';

// Pure form views (Storybook-friendly)
export { LoginFormView } from './login-form-view';
export { RegisterFormView } from './register-form-view';
export { ForgotPasswordFormView } from './forgot-password-form-view';
export { ResetPasswordFormView } from './reset-password-form-view';

// Verification flows
export { CheckEmailForm } from './check-email-form';
export { CheckEmailScreen } from './check-email-screen';
export { VerifyEmailResult } from './verify-email-result';

// Standalone auth screens (pure)
export { LoginScreen } from './screens/login-screen';
export { RegisterScreen } from './screens/register-screen';
export { ForgotPasswordScreen } from './screens/forgot-password-screen';
export { ResetPasswordScreen } from './screens/reset-password-screen';
export { VerifyEmailScreen } from './screens/verify-email-screen';
export { InviteScreen } from './screens/invite-screen';
