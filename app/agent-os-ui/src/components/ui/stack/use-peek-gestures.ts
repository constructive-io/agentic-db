'use client';

import { useCallback, useRef, useState } from 'react';
import { useReducedMotion } from 'motion/react';

import type { PeekGestureConfig } from './stack.types';

// =============================================================================
// Constants
// =============================================================================

const DEFAULT_HOVER_EXPANSION = 48; // px
const DEFAULT_DRAG_THRESHOLD = 80; // px
const DEFAULT_VELOCITY_THRESHOLD = 400; // px/s

// =============================================================================
// Types
// =============================================================================

export type UsePeekGesturesOptions = PeekGestureConfig & {
	/** Card index in the stack */
	cardIndex: number;
	/** Total cards in stack */
	totalCards: number;
	/** Callback when click on peek zone (dismiss cards above) */
	onPeekClick: () => void;
	/** Callback when drag completes dismiss threshold */
	onPeekDragDismiss: () => void;
	/** Callback during drag to update multi-card offset */
	onPeekDrag?: (dragOffset: number) => void;
	/** Callback when drag ends without dismiss */
	onPeekDragCancel?: () => void;
};

export type UsePeekGesturesResult = {
	/** Whether peek zone is hovered */
	isHovered: boolean;
	/** Whether actively dragging */
	isDragging: boolean;
	/** Current drag offset (positive = dragging right/dismiss direction) */
	dragOffset: number;
	/** Hover expansion amount in px */
	hoverExpansion: number;
	/** Handlers for the peek zone element */
	handlers: {
		onMouseEnter: () => void;
		onMouseLeave: () => void;
		onClick: (e: React.MouseEvent) => void;
		onPointerDown: (e: React.PointerEvent) => void;
		onPointerMove: (e: React.PointerEvent) => void;
		onPointerUp: (e: React.PointerEvent) => void;
		onPointerCancel: (e: React.PointerEvent) => void;
	};
};

// =============================================================================
// Hook
// =============================================================================

/**
 * Hook for peek zone interactions: hover expansion, click-to-dismiss, drag-to-dismiss.
 * Works on both mobile and desktop.
 */
export function usePeekGestures(options: UsePeekGesturesOptions): UsePeekGesturesResult {
	const {
		enabled = true,
		dragToDismiss = true,
		hoverExpansion = DEFAULT_HOVER_EXPANSION,
		dragThreshold = DEFAULT_DRAG_THRESHOLD,
		dragVelocityThreshold = DEFAULT_VELOCITY_THRESHOLD,
		cardIndex,
		totalCards,
		onPeekClick,
		onPeekDragDismiss,
		onPeekDrag,
		onPeekDragCancel,
	} = options;

	const prefersReducedMotion = useReducedMotion();

	const [isHovered, setIsHovered] = useState(false);
	const [isDragging, setIsDragging] = useState(false);
	const [dragOffset, setDragOffset] = useState(0);

	// Tracking refs for drag
	const startXRef = useRef(0);
	const startTimeRef = useRef(0);
	const pointerIdRef = useRef<number | null>(null);
	const hasDraggedRef = useRef(false);

	// Only enable for non-top cards
	const isTopCard = cardIndex === totalCards - 1;
	const isEnabled = enabled && !isTopCard;

	// Handlers
	const handleMouseEnter = useCallback(() => {
		if (!isEnabled || prefersReducedMotion) return;
		setIsHovered(true);
	}, [isEnabled, prefersReducedMotion]);

	const handleMouseLeave = useCallback(() => {
		if (!isEnabled) return;
		setIsHovered(false);
	}, [isEnabled]);

	const handleClick = useCallback(
		(e: React.MouseEvent) => {
			if (!isEnabled) return;

			// Don't trigger click if we just finished dragging
			if (hasDraggedRef.current) {
				hasDraggedRef.current = false;
				return;
			}

			e.stopPropagation();
			onPeekClick();
		},
		[isEnabled, onPeekClick],
	);

	const handlePointerDown = useCallback(
		(e: React.PointerEvent) => {
			if (!isEnabled || !dragToDismiss) return;

			// Only handle primary pointer
			if (e.pointerType === 'mouse' && e.button !== 0) return;

			pointerIdRef.current = e.pointerId;
			(e.target as HTMLElement).setPointerCapture(e.pointerId);

			startXRef.current = e.clientX;
			startTimeRef.current = Date.now();
			hasDraggedRef.current = false;
			setIsDragging(true);

			e.stopPropagation();
		},
		[isEnabled, dragToDismiss],
	);

	const handlePointerMove = useCallback(
		(e: React.PointerEvent) => {
			if (!isEnabled || pointerIdRef.current !== e.pointerId) return;

			const deltaX = e.clientX - startXRef.current;

			// Only allow dragging to the right (positive = dismiss direction)
			const clampedDelta = Math.max(0, deltaX);

			// Mark as dragged if moved more than 5px (prevents accidental drags)
			if (clampedDelta > 5) {
				hasDraggedRef.current = true;
			}

			setDragOffset(clampedDelta);
			onPeekDrag?.(clampedDelta);

			e.stopPropagation();
		},
		[isEnabled, onPeekDrag],
	);

	const handlePointerUp = useCallback(
		(e: React.PointerEvent) => {
			if (!isEnabled || pointerIdRef.current !== e.pointerId) return;

			(e.target as HTMLElement).releasePointerCapture(e.pointerId);

			const deltaX = e.clientX - startXRef.current;
			const deltaTime = Date.now() - startTimeRef.current;
			const velocity = deltaTime > 0 ? (deltaX / deltaTime) * 1000 : 0;

			// Check if should dismiss
			const shouldDismiss = deltaX > dragThreshold || velocity > dragVelocityThreshold;

			if (shouldDismiss && deltaX > 0) {
				onPeekDragDismiss();
			} else {
				onPeekDragCancel?.();
			}

			// Reset state
			pointerIdRef.current = null;
			setIsDragging(false);
			setDragOffset(0);

			e.stopPropagation();
		},
		[isEnabled, dragThreshold, dragVelocityThreshold, onPeekDragDismiss, onPeekDragCancel],
	);

	const handlePointerCancel = useCallback(
		(e: React.PointerEvent) => {
			if (pointerIdRef.current === e.pointerId) {
				pointerIdRef.current = null;
				setIsDragging(false);
				setDragOffset(0);
				onPeekDragCancel?.();
			}
		},
		[onPeekDragCancel],
	);

	return {
		isHovered,
		isDragging,
		dragOffset,
		hoverExpansion: isEnabled && !prefersReducedMotion ? hoverExpansion : 0,
		handlers: {
			onMouseEnter: handleMouseEnter,
			onMouseLeave: handleMouseLeave,
			onClick: handleClick,
			onPointerDown: handlePointerDown,
			onPointerMove: handlePointerMove,
			onPointerUp: handlePointerUp,
			onPointerCancel: handlePointerCancel,
		},
	};
}
