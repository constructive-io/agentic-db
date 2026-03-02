import { AlertCircleIcon } from 'lucide-react';

import { cn } from '@/lib/utils';

interface AuthErrorAlertProps {
	error: string | null;
	className?: string;
}

export function AuthErrorAlert({ error, className }: AuthErrorAlertProps) {
	const hasError = Boolean(error);

	return (
		<div
			role='alert'
			aria-live='polite'
			aria-hidden={!hasError}
			className={cn(
				'overflow-hidden transition-all duration-300 ease-out',
				hasError ? 'max-h-32' : 'max-h-0',
				className,
			)}
		>
			<div
				className={cn(
					'flex items-start gap-2.5 rounded-md px-3 py-2.5',
					'bg-destructive/8 border border-destructive/20',
					'text-destructive text-sm text-left',
					'transition-opacity duration-200',
					hasError ? 'opacity-100' : 'opacity-0',
				)}
			>
				<AlertCircleIcon className='mt-0.5 h-4 w-4 shrink-0' />
				<span className='text-pretty leading-snug'>{error}</span>
			</div>
		</div>
	);
}
