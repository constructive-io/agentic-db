import { getPasswordStrength, getPasswordStrengthColor, getPasswordStrengthLabel } from '@/lib/auth/validators';
import { cn } from '@/lib/utils';

interface PasswordStrengthProps {
	password: string;
	className?: string;
}

export function PasswordStrength({ password, className }: PasswordStrengthProps) {
	const strength = getPasswordStrength(password);
	const label = getPasswordStrengthLabel(strength);
	const colorClass = getPasswordStrengthColor(strength);

	// Don't show anything if password is empty
	if (!password) {
		return null;
	}

	return (
		<div className={cn('space-y-2', className)}>
			<div className='flex space-x-1'>
				{[...Array(5)].map((_, i) => (
					<div key={i} className={cn('h-2 w-full rounded transition-colors', i < strength ? colorClass : 'bg-muted')} />
				))}
			</div>
			<p className='text-muted-foreground text-sm'>
				Password strength:{' '}
				<span
					className={cn('font-medium', {
						'text-red-600': strength <= 2,
						'text-yellow-600': strength === 3,
						'text-blue-600': strength === 4,
						'text-green-600': strength === 5,
					})}
				>
					{label}
				</span>
			</p>
		</div>
	);
}
