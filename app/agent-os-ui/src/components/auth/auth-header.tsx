import { cn } from '@/lib/utils';
import { CardDescription, CardTitle } from '@/components/ui/card';
import { BrandLogo } from '@/components/brand-logo';
import { branding } from '@/config/branding';

interface AuthHeaderProps {
	title: string;
	description?: string;
	showLogo?: boolean;
	className?: string;
}

export function AuthHeader({ title, description, showLogo = true, className }: AuthHeaderProps) {
	return (
		<div className={cn('flex flex-col items-center space-y-2', className)}>
			{showLogo && (
				<div className='flex items-center space-x-2'>
					<div className='flex h-8 w-8 items-center justify-center rounded-md'>
						<BrandLogo variant='icon' className='h-6 w-auto' />
					</div>
					<span className='text-lg font-semibold'>{branding.name}</span>
				</div>
			)}
			<div className='text-center'>
				<CardTitle className='text-2xl font-bold'>{title}</CardTitle>
				{description && <CardDescription className='text-muted-foreground mt-2'>{description}</CardDescription>}
			</div>
		</div>
	);
}
