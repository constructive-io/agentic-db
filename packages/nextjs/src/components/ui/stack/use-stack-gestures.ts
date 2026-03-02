'use client';

import { useState, useCallback, useRef } from 'react';
import { useDrag } from '@use-gesture/react';
import { useReducedMotion } from 'motion/react';

import type { GestureConfig } from './stack.types';

// =============================================================================
// Constants
// =============================================================================

/** Distance threshold to trigger dismiss */
const DEFAULT_SWIPE_THRESHOLD = 120; // px

/** Velocity threshold for quick flick dismiss */
const DEFAULT_VELOCITY_THRESHOLD = 0.6; // px/ms (use-gesture uses px/ms)

/** Minimum drag distance before velocity dismiss can apply */
const MIN_VELOCITY_DISTANCE = 60; // px

/** Left edge zone to ignore (avoid iOS Safari back gesture conflict) */
const EDGE_IGNORE_ZONE = 30; // px from left edge

// =============================================================================
// Types
// =============================================================================

export type UseStackGesturesOptions = GestureConfig & {
	/** Whether gestures are enabled */
	enabled?: boolean;
	/** Callback when swipe completes and should dismiss */
	onDismiss: () => void;
};

export type UseStackGesturesResult = {
	/** Current drag X offset */
	dragX: number;
	/** Whether currently dragging */
	isDragging: boolean;
	/** Bind function to attach to the draggable element */
	bind: ReturnType<typeof useDrag>;
};

// =============================================================================
// Hook
// =============================================================================

/**
 * Hook for swipe-to-dismiss gesture on stack cards using @use-gesture/react.
 *
 * Features:
 * - Only allows swiping to the right (positive X direction)
 * - Ignores touches near left edge (avoids iOS Safari back gesture conflict)
 * - Requires horizontal intent before activating (won't interfere with scroll)
 * - Dismisses on release after distance or velocity threshold
 * - Auto-dismisses near the end of the drag (configurable)
 * - 1:1 finger tracking for responsive feel
 */
export function useStackGestures(options: UseStackGesturesOptions): UseStackGesturesResult {
	const {
		enabled = true,
		swipeToPop = true,
		swipeThreshold = DEFAULT_SWIPE_THRESHOLD,
		velocityThreshold = DEFAULT_VELOCITY_THRESHOLD,
		autoDismissThreshold,
		onDismiss,
	} = options;


	const prefersReducedMotion = useReducedMotion();
	const isEnabled = enabled && swipeToPop && !prefersReducedMotion;

	const [dragX, setDragX] = useState(0);
	const [isDragging, setIsDragging] = useState(false);

	const handleDismiss = useCallback(() => {
		onDismiss();
	}, [onDismiss]);

	const dismissedRef = useRef(false);
	const velocityMinDistance = Math.max(MIN_VELOCITY_DISTANCE, swipeThreshold * 0.25);

	const bind = useDrag(
		({ active, movement: [mx], velocity: [vx], direction: [dx], initial: [initialX], xy: [currentX], cancel, first }) => {
			// On first event, check if touch started near left edge
			if (first && initialX < EDGE_IGNORE_ZONE) {
				cancel();
				return;
			}

			if (first) {
				dismissedRef.current = false;
			}

			// Only allow rightward movement (positive direction)
			// If user is dragging left, clamp to 0
			const clampedX = Math.max(0, mx);

			if (active) {
				const canAutoDismiss =
					autoDismissThreshold !== undefined &&
					!dismissedRef.current &&
					dx > 0 &&
					clampedX >= 24 &&
					currentX >= autoDismissThreshold;

				if (canAutoDismiss) {
					dismissedRef.current = true;
					setDragX(0);
					setIsDragging(false);
					handleDismiss();
					cancel();
					return;
				}

				setDragX(clampedX);
				setIsDragging(true);
				return;
			}

			if (!dismissedRef.current) {
				const shouldDismiss =
					dx > 0 &&
					(clampedX > swipeThreshold || (vx > velocityThreshold && clampedX > velocityMinDistance));

				if (shouldDismiss) {
					handleDismiss();
				}
			}

			// Reset state
			setDragX(0);
			setIsDragging(false);
		},
		{
			enabled: isEnabled,
			// Only activate after moving 10px (prevents accidental triggers)
			threshold: 10,
			// Lock to horizontal axis once gesture starts
			axis: 'x',
			// Filter by direction - only track if moving more horizontally than vertically
			filterTaps: true,
			// Use touch-action to allow vertical scroll
			pointer: {
				touch: true,
			},
		},
	);

	return {
		dragX,
		isDragging,
		bind,
	};
}
