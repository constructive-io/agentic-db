'use client';

import * as React from 'react';
import { memo, useMemo, useCallback, useState } from 'react';
import { motion, useReducedMotion } from 'motion/react';

import { cn } from '@/lib/utils';

import { createOffsetTransition, peekHoverSpring, peekDragSpring, lastCardExitTransition } from './stack-animations';
import { CardReadyProvider, useCardInjectedProps, useStackContext } from './stack-context';
import { StackHeader } from './stack-header';
import type { AnimationConfig, CardSpec, CardStackApi, GestureConfig, PeekGestureConfig } from './stack.types';
import { getCardZIndex, getResponsiveCardOffset, normalizeWidth } from './stack-utils';
import { usePeekGestures } from './use-peek-gestures';

/** Default hover expansion in pixels */
const DEFAULT_HOVER_EXPANSION = 48;

export type StackCardProps = {
	/** The card specification */
	card: CardSpec;
	/** Index of this card in the stack */
	index: number;
	/** Total number of cards in the stack */
	totalCards: number;
	/** Width of the top card (for side-by-side calculations) */
	topCardWidth: number;
	/** Animation configuration */
	animation?: AnimationConfig;
	/** Whether this is a mobile viewport */
	isMobile?: boolean;
	/** Gesture configuration for mobile */
	gestureConfig?: GestureConfig;
	/** Peek gesture configuration */
	peekGestureConfig?: PeekGestureConfig;
	/** Custom header renderer */
	renderHeader?: (card: CardSpec, api: CardStackApi) => React.ReactNode;
	/** Compression ratio for responsive offset (1 = full, 0 = collapsed) */
	compressionRatio?: number;
	/** Adjusted peek offset after compression */
	adjustedPeekOffset?: number;
	/** Drag state from gesture hook (for top card swipe-to-dismiss) */
	dragX?: number;
	/** Gesture bind from @use-gesture/react */
	gestureBind?: ReturnType<typeof import('@use-gesture/react').useDrag>;
	/** Whether this card's peek zone is hovered (viewport-coordinated) */
	isPeekHovered?: boolean;
	/** Callback when peek hover starts */
	onPeekHoverStart?: (cardIndex: number) => void;
	/** Callback when peek hover ends */
	onPeekHoverEnd?: (cardIndex: number) => void;
	/** Peek drag offset applied to this card (when cards above are being dragged via peek zone) */
	peekDragOffset?: number;
	/** Callback when peek drag starts on this card's peek zone */
	onPeekDragStart?: (cardIndex: number) => void;
	/** Callback during peek drag on this card's peek zone */
	onPeekDrag?: (cardIndex: number, offset: number) => void;
	/** Callback when peek drag ends on this card's peek zone */
	onPeekDragEnd?: (cardIndex: number, shouldDismiss: boolean) => void;
	/** Whether this is the last card (for exit animation with fade) */
	isLastCard?: boolean;
	/** Additional class name for the card */
	className?: string;
};

function StackCardInner({
	card,
	index,
	totalCards,
	topCardWidth,
	animation,
	isMobile = false,
	renderHeader,
	peekGestureConfig,
	compressionRatio = 1,
	adjustedPeekOffset,
	dragX = 0,
	gestureBind,
	isPeekHovered = false,
	onPeekHoverStart,
	onPeekHoverEnd,
	peekDragOffset = 0,
	onPeekDragStart,
	onPeekDrag,
	onPeekDragEnd,
	isLastCard = false,
	className,
}: StackCardProps) {
	const { config, api, state } = useStackContext();
	const prefersReducedMotion = useReducedMotion();
	const injectedProps = useCardInjectedProps(card.id);

	// Track when enter animation completes - used by useCardReady() hook
	// Start true if reduced motion is preferred (no animation to wait for)
	const [isAnimationComplete, setAnimationComplete] = useState(prefersReducedMotion ?? false);

	// Handler for animation completion - fires when any animation on this element completes
	// The first animation to complete after mount is the enter animation
	const handleAnimationComplete = useCallback(() => {
		setAnimationComplete(true);
	}, []);

	// Calculate card positioning
	const isTopCard = index === totalCards - 1;
	const isSecondCard = index === totalCards - 2;
	// In side-by-side mode, second card is fully visible - no peek needed
	// Peek zone only for cards that are actually peeking (partially hidden under cards above)
	const hasPeekZone = !isTopCard && !isMobile && !(config.layoutMode === 'side-by-side' && isSecondCard);
	const zIndex = getCardZIndex(index, config.zIndexBase);

	// Use adjusted peek offset or default
	const effectivePeekOffset = adjustedPeekOffset ?? config.defaultPeekOffset;

	// Calculate responsive offset (compresses as viewport shrinks)
	const baseOffset = useMemo(
		() =>
			getResponsiveCardOffset(
				index,
				totalCards,
				state.cards,
				config.layoutMode,
				topCardWidth,
				effectivePeekOffset,
				compressionRatio,
				typeof config.defaultWidth === 'number' ? config.defaultWidth : 480,
			),
		[index, totalCards, state.cards, config.layoutMode, topCardWidth, effectivePeekOffset, compressionRatio, config.defaultWidth],
	);

	// Card width
	const cardWidth = isMobile ? '100%' : normalizeWidth(card.width, config.defaultWidth);

	// Animation transition
	const offsetTransition = createOffsetTransition(animation);

	// Close handler
	const handleClose = useCallback(() => {
		api.dismiss(card.id);
	}, [api, card.id]);

	// Peek gesture callbacks
	const handlePeekClick = useCallback(() => {
		api.popTo(card.id);
	}, [api, card.id]);

	const handlePeekDragDismiss = useCallback(() => {
		onPeekDragEnd?.(index, true);
	}, [index, onPeekDragEnd]);

	const handlePeekDrag = useCallback(
		(offset: number) => {
			onPeekDrag?.(index, offset);
		},
		[index, onPeekDrag],
	);

	const handlePeekDragCancel = useCallback(() => {
		onPeekDragEnd?.(index, false);
	}, [index, onPeekDragEnd]);

	// Peek hover callbacks (forward to viewport)
	const handlePeekHoverStart = useCallback(() => {
		onPeekHoverStart?.(index);
	}, [index, onPeekHoverStart]);

	const handlePeekHoverEnd = useCallback(() => {
		onPeekHoverEnd?.(index);
	}, [index, onPeekHoverEnd]);

	// Peek gestures hook
	const peekGestures = usePeekGestures({
		...peekGestureConfig,
		cardIndex: index,
		totalCards,
		onPeekClick: handlePeekClick,
		onPeekDragDismiss: handlePeekDragDismiss,
		onPeekDrag: handlePeekDrag,
		onPeekDragCancel: handlePeekDragCancel,
	});

	// Calculate hover expansion using viewport-coordinated hover state
	const hoverExpansion = hasPeekZone && isPeekHovered && !peekGestures.isDragging && !prefersReducedMotion
		? (peekGestureConfig?.hoverExpansion ?? DEFAULT_HOVER_EXPANSION)
		: 0;

	// Combined X transform: base offset + swipe drag + hover expansion + peek drag from other cards
	// Note: peekDragOffset is applied when cards ABOVE this one are being dragged
	const xOffset = -baseOffset + dragX - hoverExpansion + peekDragOffset;

	// Render the card component with injected props, wrapped in CardReadyProvider
	const CardComponent = card.Component;
	const cardContent = useMemo(() => {
		return (
			<CardReadyProvider isAnimationComplete={isAnimationComplete}>
				<CardComponent {...(card.props as object)} {...injectedProps} />
			</CardReadyProvider>
		);
	}, [CardComponent, card.props, injectedProps, isAnimationComplete]);

	// Custom or default header
	const headerContent = renderHeader ? (
		renderHeader(card, api)
	) : (
		<StackHeader card={card} onClose={handleClose} />
	);

	// Animation states
	const animateX = xOffset;
	const initialX = prefersReducedMotion ? xOffset : '100%';
	const exitX = prefersReducedMotion ? xOffset : '100%';
	// Last card fades out as it slides for smoother exit when backdrop is also fading
	const exitOpacity = prefersReducedMotion ? 0 : (isLastCard ? 0 : 1);

	// Choose transition based on interaction state
	let activeTransition = offsetTransition;
	if (peekGestures.isDragging || peekDragOffset > 0) {
		activeTransition = peekDragSpring;
	} else if (isPeekHovered) {
		activeTransition = peekHoverSpring;
	}

	// Build exit animation object - last card uses tween for smooth fade, others use spring
	const exitAnimation = isLastCard && !prefersReducedMotion
		? { x: exitX, opacity: exitOpacity, transition: lastCardExitTransition }
		: { x: exitX, opacity: exitOpacity };

	return (
		<motion.div
			data-slot="stack-card"
			data-card-id={card.id}
			data-card-index={index}
			data-is-top={isTopCard}
			data-offset={baseOffset}
			initial={{ x: initialX, opacity: prefersReducedMotion ? 0 : 1 }}
			animate={{ x: animateX, opacity: 1 }}
			exit={exitAnimation}
			transition={activeTransition}
			onAnimationComplete={handleAnimationComplete}
			style={{
				position: 'fixed',
				top: 0,
				right: 0,
				height: '100dvh',
				width: cardWidth,
				zIndex,
				willChange: 'transform',
				// On mobile, allow vertical pan (scroll) but handle horizontal ourselves
				// This prevents conflict with iOS Safari gestures while allowing content scroll
				touchAction: isMobile ? 'pan-y pinch-zoom' : undefined,
			}}
			className={cn(
				'flex flex-col',
				'bg-background',
				'shadow-lg',
				'border-l border-border/50',
				className,
			)}
			// Gesture binding for swipe-to-dismiss (from @use-gesture/react)
			{...(isTopCard && isMobile && gestureBind ? gestureBind() : {})}
		>
			{/* Peek Zone - invisible overlay for gesture handling */}
			{hasPeekZone && (
				<div
					data-slot="peek-zone"
					className={cn(
						'absolute inset-y-0',
						'cursor-pointer',
						// Visual feedback during hover/drag (using viewport-coordinated state)
						isPeekHovered && 'bg-primary/5',
						peekGestures.isDragging && 'bg-primary/10',
					)}
					style={{
						// Peek zone covers the visible peek area (baseOffset determines how much is visible)
						// Minimum 32px, expands when hovered to keep mouse inside during animation
						left: 0,
						width: isPeekHovered
							? Math.max(32, baseOffset) + hoverExpansion
							: Math.max(32, baseOffset),
						zIndex: zIndex + 1,
						// Smooth transition to prevent sudden size jumps
						transition: 'width 0.15s ease-out',
					}}
					// Use viewport-coordinated hover + local gesture handlers
					onMouseEnter={handlePeekHoverStart}
					onMouseLeave={handlePeekHoverEnd}
					onClick={peekGestures.handlers.onClick}
					onPointerDown={peekGestures.handlers.onPointerDown}
					onPointerMove={peekGestures.handlers.onPointerMove}
					onPointerUp={peekGestures.handlers.onPointerUp}
					onPointerCancel={peekGestures.handlers.onPointerCancel}
				/>
			)}

			{/* Header */}
			{headerContent}

			{/* Content */}
			<div
				data-slot="stack-card-content"
				className="flex-1 overflow-auto"
				style={{
					// Allow vertical scroll but let us handle horizontal
					touchAction: isMobile ? 'pan-y pinch-zoom' : undefined,
				}}
				// Gesture binding also on content area (touch target is often inside here)
				{...(isTopCard && isMobile && gestureBind ? gestureBind() : {})}
			>
				{cardContent}
			</div>
		</motion.div>
	);
}

// Memoize to prevent re-renders when other cards change
export const StackCard = memo(StackCardInner);
