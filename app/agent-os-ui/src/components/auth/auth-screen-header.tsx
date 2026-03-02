import * as React from 'react';

import { cn } from '@/lib/utils';
import { BrandLogo } from '@/components/brand-logo';

/** Props for customizing auth branding across screens */
export interface AuthBrandingProps {
	/** Custom logo element - defaults to ConstructiveIcon */
	logo?: React.ReactNode;
	/** App name shown next to logo - defaults to "Constructive" */
	appName?: string;
	/** Whether to show the logo section - defaults to true */
	showLogo?: boolean;
}

interface AuthScreenHeaderProps extends AuthBrandingProps {
	title: string;
	description?: string;
	className?: string;
}

export function AuthScreenHeader({
	title,
	description,
	logo,
	appName,
	showLogo = true,
	className,
}: AuthScreenHeaderProps) {
	const logoElement = logo ?? <BrandLogo variant='icon' className='h-9 w-auto' />;

	return (
		<div className={cn('space-y-4 text-center', className)}>
			{showLogo ? (
				<div className='flex items-center justify-center'>{logoElement}</div>
			) : null}
			{appName ? (
				<span className='text-primary text-[15px] font-semibold tracking-tight'>{appName}</span>
			) : null}

			<div className='space-y-1.5'>
				<h2
					className='from-foreground via-foreground to-foreground/70 bg-linear-to-br bg-clip-text text-xl
						font-semibold tracking-tight text-transparent'
				>
					{title}
				</h2>
				{description ? <p className='text-muted-foreground text-[13px] leading-relaxed'>{description}</p> : null}
			</div>
		</div>
	);
}
