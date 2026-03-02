'use client';

import * as React from 'react';

import { cn } from '@/lib/utils';
import { Card, CardContent } from '@/components/ui/card';

import type { AuthBrandingProps } from './auth-screen-header';
import { AuthLegalFooter, type AuthLegalFooterProps } from './auth-legal-footer';

type AuthScreenLayoutFill = 'viewport' | 'parent';

export interface AuthScreenLayoutProps extends AuthBrandingProps {
	children: React.ReactNode;
	fill?: AuthScreenLayoutFill;
	className?: string;
	/** Show legal footer with Terms, Privacy, Security links. Default: true */
	showLegalFooter?: boolean;
	/** Override legal footer props */
	legalFooterProps?: Omit<AuthLegalFooterProps, 'className'>;
}

export function AuthScreenLayout({
	children,
	fill = 'viewport',
	className,
	showLegalFooter = true,
	legalFooterProps,
	// Branding props passed through to children via context or direct prop drilling
	// eslint-disable-next-line @typescript-eslint/no-unused-vars
	logo,
	// eslint-disable-next-line @typescript-eslint/no-unused-vars
	appName,
	// eslint-disable-next-line @typescript-eslint/no-unused-vars
	showLogo,
}: AuthScreenLayoutProps) {
	return (
		<div
			className={cn(
				'bg-background relative flex flex-col',
				fill === 'viewport' ? 'min-h-dvh w-dvw' : 'h-full w-full',
				className,
			)}
		>
			{/* Main content area */}
			<div className='flex flex-1 justify-center p-6 pt-24 sm:pt-44'>
				<div className='relative z-10 w-full max-w-md'>
					<Card className='overflow-hidden border-border/80'>
						<CardContent className='space-y-2 pt-6'>{children}</CardContent>
					</Card>
				</div>
			</div>

			{/* Legal footer */}
			{showLegalFooter && fill === 'viewport' && (
				<AuthLegalFooter {...legalFooterProps} />
			)}
		</div>
	);
}
