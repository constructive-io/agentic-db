'use client';

import Link from 'next/link';
import { ArrowLeft } from 'lucide-react';

import { BrandLogo } from '@/components/brand-logo';
import { Button } from '@/components/ui/button';

export interface AccessDeniedProps {
	/**
	 * When true, renders as a full-page component (for standalone routes like /access-denied).
	 * When false/undefined, renders as a content area component that fits within the shell layout.
	 * @default false
	 */
	fullPage?: boolean;
}

/**
 * Access Denied component with design matching the not-found.tsx page.
 * Can be used either as a full-page component or within the authenticated shell.
 */
export function AccessDenied({ fullPage = false }: AccessDeniedProps) {
	const containerClass = fullPage
		? 'bg-background relative flex min-h-dvh items-center justify-center overflow-hidden px-6'
		: 'bg-background relative flex h-full min-h-[calc(100vh-4rem)] flex-1 items-center justify-center overflow-hidden px-6';

	return (
		<div className={containerClass}>
			{/* Background watermark */}
			<div className='pointer-events-none absolute inset-0 flex items-center justify-center'>
				<BrandLogo
					variant='watermark'
					className='animate-in fade-in-0 zoom-in-50 h-[400px] w-auto fill-mode-backwards opacity-[0.03] duration-1000 sm:h-[600px]'
				/>
			</div>

			{/* Content */}
			<div className='relative z-10 flex flex-col items-center text-center'>
				{/* 403 hero text */}
				<div className='animate-in fade-in-0 slide-in-from-bottom-6 mb-6 fill-mode-backwards duration-700'>
					<span className='text-foreground/5 select-none text-[8rem] font-bold leading-none tracking-tighter sm:text-[14rem]'>
						403
					</span>
				</div>

				{/* Text content */}
				<div
					className='animate-in fade-in-0 slide-in-from-bottom-4 fill-mode-backwards duration-500'
					style={{ animationDelay: '100ms' }}
				>
					<h1 className='text-foreground text-2xl font-semibold tracking-tight sm:text-3xl'>Access Denied</h1>
					<p className='text-muted-foreground mx-auto mt-3 max-w-sm text-sm leading-relaxed sm:text-base'>
						You don&apos;t have permission to access this page.
					</p>
				</div>

				{/* Action */}
				<div
					className='animate-in fade-in-0 slide-in-from-bottom-2 fill-mode-backwards mt-8 duration-500'
					style={{ animationDelay: '200ms' }}
				>
					<Button asChild variant='outline' className='group gap-2'>
						<Link href='/'>
							<ArrowLeft className='h-4 w-4 transition-transform group-hover:-translate-x-0.5' />
							Back to Home
						</Link>
					</Button>
				</div>
			</div>
		</div>
	);
}
