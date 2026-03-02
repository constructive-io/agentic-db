'use client';

import { useAuthContext } from '@/lib/auth/auth-context';
import { LoginFormView } from './login-form-view';

interface LoginFormProps {
	onShowForgot?: () => void;
	onShowRegister?: () => void;
}

export function LoginForm({ onShowForgot, onShowRegister }: LoginFormProps) {
	const { login } = useAuthContext();

	return <LoginFormView onLogin={login} onShowForgot={onShowForgot} onShowRegister={onShowRegister} />;
}
