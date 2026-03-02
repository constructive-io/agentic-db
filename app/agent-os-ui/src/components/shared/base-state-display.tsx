'use client';

import { type ReactNode } from 'react';
import { RiAlertLine, RiRefreshLine, RiShieldLine } from '@remixicon/react';

import { cn } from '@/lib/utils';
import { AuthErrorBanner, isAuthError } from '@/lib/gql/auth-error-handler';
import type { DataError } from '@/lib/gql/error-handler';
import { Button } from '@/components/ui/button';

// ============================================================================
// Shared Skeleton Component
// Uses higher contrast colors that work in both light and dark modes
// ============================================================================

export function BaseSkeleton({ className, ...props }: React.ComponentProps<'div'>) {
	return (
		<div
			data-slot='skeleton'
			className={cn('animate-pulse rounded-md', 'bg-zinc-200 dark:bg-zinc-800', className)}
			{...props}
		/>
	);
}

// ============================================================================
// Types
// ============================================================================

export type BaseStateType = 'loading' | 'error' | 'empty';

export interface BaseStateConfig {
	type: BaseStateType;
	message?: string;
	onRetry?: () => void;
	/** Original error object for auth error detection */
	error?: Error | DataError | null;
}

// ============================================================================
// Banner Components
// ============================================================================

interface ErrorBannerProps {
	config: BaseStateConfig;
	/** Title shown in the error banner */
	title?: string;
	/** Page header to display above the error */
	pageHeader?: ReactNode;
	/** Skeleton to display behind the error */
	skeleton?: ReactNode;
}

/**
 * Error banner with auth error detection
 * Shows AuthErrorBanner with countdown for authentication errors
 * Shows regular error banner for other errors
 */
export function ErrorBanner({ config, title = 'Failed to load data', pageHeader, skeleton }: ErrorBannerProps) {
	// Check if this is an auth error
	const errorObj = config.error || (config.message ? new Error(config.message) : null);
	const showAuthBanner = errorObj && isAuthError(errorObj);

	return (
		<>
			{pageHeader}

			{showAuthBanner && errorObj ? (
				<AuthErrorBanner error={errorObj} />
			) : (
				<div
					className={cn(
						'rounded-lg border overflow-hidden',
						'bg-red-50 dark:bg-red-950/30 border-red-200/60 dark:border-red-900/50'
					)}
				>
					<div className='flex items-center gap-4 px-4 py-3'>
						{/* Icon */}
						<div className='flex h-9 w-9 items-center justify-center rounded-md shrink-0 bg-red-100 dark:bg-red-900/50 border border-red-200/60 dark:border-red-800/50'>
							<RiAlertLine className='h-4.5 w-4.5 text-red-600 dark:text-red-400' />
						</div>

						{/* Content */}
						<div className='flex-1 min-w-0'>
							<p className='text-sm font-medium text-foreground'>{title}</p>
							<p className='text-xs text-muted-foreground truncate'>{config.message}</p>
						</div>

						{/* Retry button */}
						{config.onRetry && (
							<Button
								variant='outline'
								size='sm'
								onClick={config.onRetry}
								className='h-8 px-3 text-xs shrink-0 border-red-200/60 dark:border-red-800/50 hover:bg-red-100 dark:hover:bg-red-900/50 hover:text-red-700 dark:hover:text-red-300'
							>
								<RiRefreshLine className='mr-1.5 h-3.5 w-3.5' />
								Retry
							</Button>
						)}
					</div>
				</div>
			)}

			{/* Faded skeleton */}
			{skeleton && <div className='opacity-30'>{skeleton}</div>}
		</>
	);
}

interface InfoBannerProps {
	/** Icon to display */
	icon?: React.ElementType;
	/** Title text */
	title: string;
	/** Description text */
	description: string;
	/** Optional action button */
	action?: ReactNode;
	/** Page header to display above */
	pageHeader?: ReactNode;
	/** Skeleton to display behind */
	skeleton?: ReactNode;
	/** Opacity for skeleton (default 0.2) */
	skeletonOpacity?: number;
}

/**
 * Info banner for empty states
 */
export function InfoBanner({
	icon: Icon = RiShieldLine,
	title,
	description,
	action,
	pageHeader,
	skeleton,
	skeletonOpacity = 0.2,
}: InfoBannerProps) {
	return (
		<>
			{pageHeader}

			<div className='rounded-lg border overflow-hidden bg-zinc-100 dark:bg-zinc-900/50 border-zinc-200/60 dark:border-zinc-800/50'>
				<div className='flex items-center gap-4 px-4 py-3'>
					{/* Icon */}
					<div className='flex h-9 w-9 items-center justify-center rounded-md shrink-0 bg-zinc-200 dark:bg-zinc-800 border border-zinc-300/60 dark:border-zinc-700/50'>
						<Icon className='h-4.5 w-4.5 text-zinc-500 dark:text-zinc-400' />
					</div>

					{/* Content */}
					<div className='flex-1 min-w-0'>
						<p className='text-sm font-medium text-foreground'>{title}</p>
						<p className='text-xs text-muted-foreground'>{description}</p>
					</div>

					{/* Action */}
					{action}
				</div>
			</div>

			{/* Faded skeleton */}
			{skeleton && <div style={{ opacity: skeletonOpacity }}>{skeleton}</div>}
		</>
	);
}

/**
 * Empty state banner - specialized info banner for filter results
 */
export function EmptyBanner({
	icon: Icon = RiShieldLine,
	title = 'No results found',
	description = 'No items match your current filters',
}: {
	icon?: React.ElementType;
	title?: string;
	description?: string;
}) {
	return (
		<div className='rounded-lg border overflow-hidden bg-zinc-100 dark:bg-zinc-900/50 border-zinc-200/60 dark:border-zinc-800/50'>
			<div className='flex items-center gap-4 px-4 py-3'>
				{/* Icon */}
				<div className='flex h-9 w-9 items-center justify-center rounded-md shrink-0 bg-zinc-200 dark:bg-zinc-800 border border-zinc-300/60 dark:border-zinc-700/50'>
					<Icon className='h-4.5 w-4.5 text-zinc-500 dark:text-zinc-400' />
				</div>

				{/* Content */}
				<div className='flex-1 min-w-0'>
					<p className='text-sm font-medium text-foreground'>{title}</p>
					<p className='text-xs text-muted-foreground'>{description}</p>
				</div>
			</div>
		</div>
	);
}

// ============================================================================
// Default Page Headers
// ============================================================================

interface DefaultPageHeaderProps {
	title: string;
	description: string;
}

export function DefaultPageHeader({ title, description }: DefaultPageHeaderProps) {
	return (
		<div className='flex flex-col gap-5 sm:flex-row sm:items-start sm:justify-between'>
			<div className='space-y-2'>
				<h1 className='text-foreground text-2xl font-bold tracking-tight md:text-3xl'>{title}</h1>
				<p className='text-muted-foreground max-w-2xl text-sm leading-relaxed sm:text-base'>{description}</p>
			</div>
		</div>
	);
}

