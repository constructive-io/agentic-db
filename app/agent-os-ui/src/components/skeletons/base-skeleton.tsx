'use client';

import { cn } from '@/lib/utils';

/**
 * Enhanced skeleton with shimmer effect.
 * Uses a performant CSS-only shimmer animation that flows across elements.
 */
export function Skeleton({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div
			data-slot='skeleton'
			className={cn(
				'relative overflow-hidden rounded-md',
				// Base color with subtle gradient
				'bg-gradient-to-r from-zinc-200/80 via-zinc-100/60 to-zinc-200/80',
				'dark:from-zinc-800/80 dark:via-zinc-700/40 dark:to-zinc-800/80',
				// Shimmer effect overlay
				'before:absolute before:inset-0 before:-translate-x-full',
				'before:bg-gradient-to-r before:from-transparent before:via-white/20 before:to-transparent',
				'dark:before:via-white/5',
				'before:animate-[shimmer-slide_2s_ease-in-out_infinite]',
				className
			)}
			{...props}
		/>
	);
}
