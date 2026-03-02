'use client';

import { useEffect, useState } from 'react';

import { Skeleton } from '@/components/ui/skeleton';

export interface DeferredCardContentProps {
	children: React.ReactNode;
	/** Custom placeholder while waiting for animation to complete */
	placeholder?: React.ReactNode;
	/** Delay in ms before showing content (default: 220, slightly after 200ms animation) */
	delay?: number;
	/** Whether to show content immediately (useful for edit mode where data is cached) */
	immediate?: boolean;
	/**
	 * Priority level for scheduling content render:
	 * - 'high': Uses half the delay for faster content display
	 * - 'normal': Standard delay with rAF (default)
	 * - 'low': Uses requestIdleCallback when available for non-critical content
	 */
	priority?: 'high' | 'normal' | 'low';
	/** Callback when content becomes ready to render */
	onReady?: () => void;
}

/**
 * Defers rendering of heavy content until after Stack card animation completes.
 * This prevents layout thrashing and dropped frames during the slide-in animation.
 *
 * Usage:
 * ```tsx
 * <DeferredCardContent placeholder={<MySkeleton />}>
 *   <HeavyContent />
 * </DeferredCardContent>
 * ```
 *
 * With priority:
 * ```tsx
 * <DeferredCardContent priority="low" placeholder={<MySkeleton />}>
 *   <NonCriticalContent />
 * </DeferredCardContent>
 * ```
 */
export function DeferredCardContent({
	children,
	placeholder,
	delay = 220,
	immediate = false,
	priority = 'normal',
	onReady,
}: DeferredCardContentProps) {
	const [ready, setReady] = useState(immediate);

	useEffect(() => {
		if (immediate) {
			onReady?.();
			return;
		}

		let cancelled = false;

		const scheduleReady = () => {
			if (cancelled) return;
			setReady(true);
			onReady?.();
		};

		// Adjust delay based on priority
		const effectiveDelay = priority === 'high' ? Math.floor(delay / 2) : delay;

		// Use requestIdleCallback for low priority when available
		if (priority === 'low' && 'requestIdleCallback' in window) {
			const timeoutId = setTimeout(() => {
				const idleId = window.requestIdleCallback(scheduleReady, { timeout: effectiveDelay });
				return () => window.cancelIdleCallback(idleId);
			}, effectiveDelay);

			return () => {
				cancelled = true;
				clearTimeout(timeoutId);
			};
		}

		// Use setTimeout + rAF to sync with browser's paint cycle
		// This ensures content renders after animation settles
		const timeoutId = setTimeout(() => {
			const rafId = requestAnimationFrame(scheduleReady);
			return () => cancelAnimationFrame(rafId);
		}, effectiveDelay);

		return () => {
			cancelled = true;
			clearTimeout(timeoutId);
		};
	}, [delay, immediate, priority, onReady]);

	if (!ready) {
		return placeholder ?? <DefaultCardSkeleton />;
	}

	return <>{children}</>;
}

/**
 * Default skeleton placeholder for card content.
 * Shows a reasonable loading state for typical form-based cards.
 */
function DefaultCardSkeleton() {
	return (
		<div className="space-y-6 p-6">
			{/* Header area skeleton */}
			<div className="flex items-center justify-center py-4">
				<Skeleton className="h-24 w-48 rounded-lg" />
			</div>
			{/* Form field skeletons */}
			<div className="space-y-4">
				<div className="space-y-2">
					<Skeleton className="h-4 w-20" />
					<Skeleton className="h-10 w-full" />
				</div>
				<div className="space-y-2">
					<Skeleton className="h-4 w-16" />
					<Skeleton className="h-10 w-full" />
				</div>
				<div className="space-y-2">
					<Skeleton className="h-4 w-24" />
					<Skeleton className="h-10 w-full" />
				</div>
			</div>
		</div>
	);
}
