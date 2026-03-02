'use client';

import { useRegister } from '@/lib/gql/hooks/auth';
import { RegisterFormView } from './register-form-view';

interface RegisterFormProps {
	onShowLogin?: () => void;
}

export function RegisterForm({ onShowLogin }: RegisterFormProps) {
	const registerMutation = useRegister();

	return <RegisterFormView onRegister={(data) => registerMutation.mutateAsync(data)} onShowLogin={onShowLogin} />;
}
