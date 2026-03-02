import { ReactNode } from 'react';
import { LucideIcon } from 'lucide-react';

import { cn } from '@/lib/utils';

interface PageHeaderWithIconProps {
	title: string;
	description?: string;
	icon: LucideIcon;
	actions?: ReactNode;
	className?: string;
	iconClassName?: string;
	iconContainerClassName?: string;
}

export function PageHeaderWithIcon({
	title,
	description,
	icon: Icon,
	actions,
	className,
	iconClassName,
	iconContainerClassName,
}: PageHeaderWithIconProps) {
	return (
		<header
			data-testid='page-header-with-icon'
			className={cn('animate-in fade-in-0 slide-in-from-bottom-4 mb-10 duration-500', className)}
		>
			<div className={cn('flex flex-col gap-4 sm:flex-row sm:items-center', actions && 'sm:justify-between')}>
				<div className='flex items-center gap-4'>
					<div
						className={cn(
							`from-primary/20 to-primary/5 ring-primary/20 flex h-12 w-12 shrink-0 items-center justify-center
							rounded-xl bg-gradient-to-br ring-1`,
							iconContainerClassName,
						)}
					>
						<Icon className={cn('text-primary h-6 w-6', iconClassName)} />
					</div>
					<div className='min-w-0 flex-1'>
						<h1 className='text-foreground text-2xl font-semibold tracking-tight'>{title}</h1>
						{description ? <p className='text-muted-foreground mt-1 truncate text-sm'>{description}</p> : null}
					</div>
				</div>
				{actions ? <div className='flex items-center gap-3 sm:shrink-0'>{actions}</div> : null}
			</div>
		</header>
	);
}
