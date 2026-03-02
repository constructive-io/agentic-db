'use client';

import * as React from 'react';
import { useMemo, useState, useCallback, useEffect, useRef } from 'react';
import { AnimatePresence } from 'motion/react';
import { createPortal } from 'react-dom';

import { cn } from '@/lib/utils';

import { PORTAL_ROOT_ID, useRootPortalContainer } from '@/components/ui/portal';

import { StackBackdrop } from './stack-backdrop';
import { StackCard } from './stack-card';
import { useStackCards, useStackContext } from './stack-context';
import type { BackdropConfig, CardStackViewportProps } from './stack.types';
import { useStackGestures } from './use-stack-gestures';
import { useStackResponsive } from './use-stack-responsive';
import {
	calculateResponsiveOffset,
	isCardVisible,
	parseWidthToPixels,
	type ResponsiveOffsetResult,
} from './stack-utils';

// =============================================================================
// Constants
// =============================================================================

const DEFAULT_PEEK_DEPTH = 2;
// =============================================================================
// Types
// =============================================================================

type PeekDragState = {
	/** Index of the card whose peek zone is being dragged (-1 = none) */
	sourceIndex: number;
	/** Current drag offset in pixels */
	offset: number;
};

type PeekHoverState = {
	/** Index of the card whose peek zone is hovered (-1 = none) */
	hoveredIndex: number;
};

// =============================================================================
// Component
// =============================================================================

export function CardStackViewport({
	backdrop = true,
	renderBackdrop,
	renderHeader,
	renderEmpty,
	peekDepth = DEFAULT_PEEK_DEPTH,
	animation,
	mobile,
	peekGestures,
	className,
}: CardStackViewportProps) {
	const { config, api } = useStackContext();
	const cards = useStackCards();

	// Responsive behavior
	const { isMobile, viewportWidth } = useStackResponsive(mobile);

	// Peek drag state - tracks which card's peek zone is being dragged
	const [peekDrag, setPeekDrag] = useState<PeekDragState>({ sourceIndex: -1, offset: 0 });

	// Peek hover state - only one card can be hovered at a time (viewport-coordinated)
	const [peekHover, setPeekHover] = useState<PeekHoverState>({ hoveredIndex: -1 });
	const hoverEndTimeoutRef = useRef<NodeJS.Timeout | null>(null);

	// Track previous card count to detect stack changes
	const prevCardCountRef = useRef(cards.length);

	// Track if exit animations have completed.
	// Key insight: This starts true (no animations pending when empty).
	// When cards appear, we set it to false (animations may be needed).
	// When cards disappear, it's still false from previous render, so AnimatePresence runs exits.
	// Only after onExitComplete fires do we set it back to true.
	const [exitComplete, setExitComplete] = useState(cards.length === 0);

	// When cards appear, mark exit as not complete (we have active content)
	useEffect(() => {
		if (cards.length > 0) {
			setExitComplete(false);
		}
	}, [cards.length]);

	// Clear hover state when stack changes (cards added/removed)
	useEffect(() => {
		if (cards.length !== prevCardCountRef.current) {
			// Stack changed - clear any hover state to prevent stale highlights
			setPeekHover({ hoveredIndex: -1 });
			// Also clear any pending hover-end timeout
			if (hoverEndTimeoutRef.current) {
				clearTimeout(hoverEndTimeoutRef.current);
				hoverEndTimeoutRef.current = null;
			}
			prevCardCountRef.current = cards.length;
		}
	}, [cards.length]);

	// Callback when all exit animations complete
	const handleExitComplete = useCallback(() => {
		setExitComplete(true);
	}, []);

	// Calculate card widths
	const cardWidths = useMemo(() => {
		if (cards.length === 0) return { topCardWidth: 0, secondCardWidth: 0 };

		const topCard = cards[cards.length - 1];
		const topCardWidth = parseWidthToPixels(topCard.width ?? config.defaultWidth) ?? 480;

		const secondCard = cards.length > 1 ? cards[cards.length - 2] : null;
		const secondCardWidth = secondCard
			? (parseWidthToPixels(secondCard.width ?? config.defaultWidth) ?? 480)
			: 0;

		return { topCardWidth, secondCardWidth };
	}, [cards, config.defaultWidth]);

	// Calculate responsive offset compression
	const responsiveOffset = useMemo<ResponsiveOffsetResult>(() => {
		return calculateResponsiveOffset({
			viewportWidth,
			topCardWidth: cardWidths.topCardWidth,
			secondCardWidth: cardWidths.secondCardWidth,
			totalCards: cards.length,
			defaultPeekOffset: config.defaultPeekOffset,
			layoutMode: config.layoutMode,
		});
	}, [viewportWidth, cardWidths, cards.length, config.defaultPeekOffset, config.layoutMode]);

	// Determine if we should use mobile/collapsed mode
	const useFullScreen = isMobile || responsiveOffset.shouldCollapse;

	// Gesture handling for top card swipe-to-dismiss
	const handleDismiss = useCallback(() => {
		api.pop();
	}, [api]);

	// Use useFullScreen for gesture enabling (matches what we pass to cards)
	const swipeThreshold =
		mobile?.gestures?.swipeThreshold ?? Math.max(120, Math.round(viewportWidth * 0.35));
	const autoDismissThreshold =
		mobile?.gestures?.autoDismissThreshold ?? Math.max(swipeThreshold, Math.round(viewportWidth * 0.8));

	const { dragX, bind: gestureBind } = useStackGestures({
		enabled: useFullScreen && cards.length > 0,
		...mobile?.gestures,
		swipeThreshold,
		autoDismissThreshold,
		onDismiss: handleDismiss,
	});

	// Peek hover handlers - coordinate so only one card shows hover at a time
	const handlePeekHoverStart = useCallback((cardIndex: number) => {
		// Clear any pending hover-end timeout
		if (hoverEndTimeoutRef.current) {
			clearTimeout(hoverEndTimeoutRef.current);
			hoverEndTimeoutRef.current = null;
		}
		setPeekHover({ hoveredIndex: cardIndex });
	}, []);

	const handlePeekHoverEnd = useCallback((cardIndex: number) => {
		// Debounce hover-end to prevent flickering during animation
		if (hoverEndTimeoutRef.current) {
			clearTimeout(hoverEndTimeoutRef.current);
		}
		hoverEndTimeoutRef.current = setTimeout(() => {
			setPeekHover((prev) => (prev.hoveredIndex === cardIndex ? { hoveredIndex: -1 } : prev));
			hoverEndTimeoutRef.current = null;
		}, 100);
	}, []);

	// Peek drag handlers - coordinate multi-card animation
	const handlePeekDrag = useCallback((cardIndex: number, offset: number) => {
		setPeekDrag({ sourceIndex: cardIndex, offset });
	}, []);

	const handlePeekDragEnd = useCallback(
		(cardIndex: number, shouldDismiss: boolean) => {
			if (shouldDismiss) {
				// Pop all cards above the dragged card's peek zone
				const card = cards[cardIndex];
				if (card) {
					api.popTo(card.id);
				}
			}
			// Reset peek drag state
			setPeekDrag({ sourceIndex: -1, offset: 0 });
		},
		[api, cards],
	);

	// Determine which cards to render based on peekDepth
	const visibleCards = useMemo(() => {
		return cards.filter((_, index) => isCardVisible(index, cards.length, peekDepth));
	}, [cards, peekDepth]);

	// Portal container
	const portalContainer = useRootPortalContainer();

	// Content to render - keep AnimatePresence mounted for exit animations
	// Note: backdropNode is created inside render to access resolvedBackdrop
	const renderBackdropNode = (config?: BackdropConfig) => {
		const defaultBackdrop = <StackBackdrop key="backdrop" className="pointer-events-auto" config={config} />;
		if (renderBackdrop) {
			const customBackdrop = renderBackdrop();
			return React.isValidElement(customBackdrop)
				? React.cloneElement(customBackdrop, { key: 'backdrop' })
				: defaultBackdrop;
		}
		return defaultBackdrop;
	};

	// Track if we have cards (for backdrop and portal rendering)
	const hasCards = cards.length > 0;

	// Resolve backdrop config - first card takes precedence, then viewport prop
	// Returns: { enabled: boolean, config: BackdropConfig | undefined }
	const resolvedBackdrop = useMemo(() => {
		const firstCard = cards[0];
		const cardBackdrop = firstCard?.backdrop;

		// First card's backdrop setting takes precedence
		if (cardBackdrop !== undefined) {
			if (cardBackdrop === false) {
				return { enabled: false, config: undefined };
			}
			if (cardBackdrop === true) {
				return { enabled: true, config: undefined };
			}
			// Object config from card
			return { enabled: true, config: cardBackdrop as BackdropConfig };
		}

		// Fall back to viewport's backdrop prop
		if (backdrop === false) {
			return { enabled: false, config: undefined };
		}
		if (backdrop === true) {
			return { enabled: true, config: undefined };
		}
		// Object config from viewport
		return { enabled: true, config: backdrop as BackdropConfig };
	}, [cards, backdrop]);

	const shouldShowBackdrop = resolvedBackdrop.enabled;

	// Render nothing if no cards and exit animations are complete
	// This ensures AnimatePresence stays mounted during exit animations
	if (!hasCards && exitComplete) {
		return renderEmpty ? renderEmpty() : null;
	}

	const content = (
		<div data-slot="stack-viewport" className={cn('pointer-events-none fixed inset-0', className)}>
			<AnimatePresence mode="popLayout" onExitComplete={handleExitComplete}>
				{/* Backdrop - only when cards exist and first card wants it */}
				{shouldShowBackdrop && hasCards && renderBackdropNode(resolvedBackdrop.config)}

				{/* Cards */}
				{visibleCards.map((card, visibleIndex) => {
					// Calculate actual index in full stack
					const actualIndex = cards.length - visibleCards.length + visibleIndex;
					const isTopCard = actualIndex === cards.length - 1;
					// Last card = only card in stack, used for exit animation with fade
					const isLastCard = cards.length === 1 && isTopCard;

					// Calculate peek drag offset for this card
					// Cards above the peek drag source get the drag offset applied
					const peekDragOffset =
						peekDrag.sourceIndex >= 0 && actualIndex > peekDrag.sourceIndex
							? peekDrag.offset
							: 0;

					return (
						<StackCard
							key={card.id}
							card={card}
							index={actualIndex}
							totalCards={cards.length}
							topCardWidth={cardWidths.topCardWidth}
							animation={animation}
							isMobile={useFullScreen}
							renderHeader={renderHeader}
							peekGestureConfig={peekGestures}
							// Responsive compression
							compressionRatio={responsiveOffset.compressionRatio}
							adjustedPeekOffset={responsiveOffset.adjustedPeekOffset}
							// Top card swipe-to-dismiss
							dragX={isTopCard ? dragX : 0}
							gestureBind={isTopCard ? gestureBind : undefined}
							// Peek hover coordination (viewport-level)
							isPeekHovered={peekHover.hoveredIndex === actualIndex}
							onPeekHoverStart={handlePeekHoverStart}
							onPeekHoverEnd={handlePeekHoverEnd}
							// Peek drag coordination
							peekDragOffset={peekDragOffset}
							onPeekDrag={handlePeekDrag}
							onPeekDragEnd={handlePeekDragEnd}
							// Last card exit animation (slide + fade)
							isLastCard={isLastCard}
							className="pointer-events-auto"
						/>
					);
				})}
			</AnimatePresence>
		</div>
	);

	// Render into portal if available, otherwise render in place
	if (portalContainer) {
		return createPortal(content, portalContainer);
	}

	return content;
}
