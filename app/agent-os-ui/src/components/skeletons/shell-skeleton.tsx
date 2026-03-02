'use client';

import { cn } from '@/lib/utils';
import { Skeleton } from './base-skeleton';

/**
 * Shell content fallback - generic animated placeholder.
 * Used when we don't know the specific page type yet.
 */
export function ShellContentFallback({ className }: { className?: string }) {
	return (
		<div className={cn('bg-background flex min-h-0 flex-1', className)}>
			<div className='bg-muted/10 flex-1 animate-pulse' />
		</div>
	);
}

/**
 * Shell frame skeleton - shows the shell structure without content.
 * Provides immediate visual feedback that the app is loading.
 */
export function ShellFrameSkeleton({ children }: { children?: React.ReactNode }) {
	return (
		<div className='flex h-screen w-full flex-col overflow-hidden'>
			{/* Top bar skeleton */}
			<div className='bg-background flex h-12 items-center border-b px-4'>
				<div className='flex items-center gap-3'>
					<Skeleton className='h-6 w-6 rounded' />
					<Skeleton className='h-5 w-24 rounded' />
					<span className='text-muted-foreground/40'>/</span>
					<Skeleton className='h-5 w-32 rounded' />
				</div>
			</div>

			{/* Main area with sidebar */}
			<div className='flex min-h-0 flex-1'>
				{/* Sidebar rail skeleton */}
				<div className='border-sidebar-border bg-background flex w-14 flex-col items-center gap-2 border-r py-3'>
					<Skeleton className='h-8 w-8 rounded-md' />
					<Skeleton className='h-8 w-8 rounded-md' />
					<Skeleton className='h-8 w-8 rounded-md' />
					<Skeleton className='h-8 w-8 rounded-md' />
					<div className='flex-1' />
					<Skeleton className='h-8 w-8 rounded-full' />
				</div>

				{/* Content area */}
				<main className='min-w-0 flex-1 overflow-hidden'>
					{children ?? <ShellContentFallback />}
				</main>
			</div>
		</div>
	);
}

/**
 * Minimal shell frame - just the structural outline, no skeleton details.
 * For fastest initial paint.
 */
export function ShellFrameMinimal({ children }: { children?: React.ReactNode }) {
	return (
		<div className='flex h-screen w-full flex-col overflow-hidden'>
			<div className='bg-background flex h-12 items-center border-b' />
			<div className='flex min-h-0 flex-1'>
				<div className='border-sidebar-border bg-background w-14 border-r' />
				<main className='min-w-0 flex-1 overflow-hidden'>{children}</main>
			</div>
		</div>
	);
}
