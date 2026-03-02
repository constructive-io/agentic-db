import type { CardSpec, LayoutMode } from './stack.types';

// =============================================================================
// Offset Calculations
// =============================================================================

/**
 * Calculate the X offset for a card in cascade mode.
 * Cards below the top are pushed left by (cardsAbove * peekOffset).
 */
export function getCascadeOffset(
	cardIndex: number,
	totalCards: number,
	cards: CardSpec[],
	defaultPeekOffset: number,
): number {
	const cardsAbove = totalCards - cardIndex - 1;
	if (cardsAbove <= 0) return 0;

	// Use card-specific peekOffset if defined, else default
	const card = cards[cardIndex];
	const peekOffset = card?.peekOffset ?? defaultPeekOffset;

	return cardsAbove * peekOffset;
}

/**
 * Calculate the X offset for a card in side-by-side mode.
 * - Top card: no offset
 * - Second card: pushed by top card's width (fully visible side-by-side)
 * - Deeper cards: cascade further with peekOffset increments
 */
export function getSideBySideOffset(
	cardIndex: number,
	totalCards: number,
	topCardWidth: number,
	defaultPeekOffset: number,
): number {
	if (totalCards === 0) return 0;

	const cardsAbove = totalCards - cardIndex - 1;

	// Top card - no offset
	if (cardsAbove === 0) return 0;

	// Second card - pushed by top card width (side-by-side)
	if (cardsAbove === 1) return topCardWidth;

	// Deeper cards - cascade further
	const extraDepth = cardsAbove - 1;
	return topCardWidth + extraDepth * defaultPeekOffset;
}

/**
 * Get the offset for a card based on layout mode.
 */
export function getCardOffset(
	cardIndex: number,
	totalCards: number,
	cards: CardSpec[],
	layoutMode: LayoutMode,
	topCardWidth: number,
	defaultPeekOffset: number,
): number {
	if (layoutMode === 'side-by-side') {
		return getSideBySideOffset(cardIndex, totalCards, topCardWidth, defaultPeekOffset);
	}
	return getCascadeOffset(cardIndex, totalCards, cards, defaultPeekOffset);
}

// =============================================================================
// Responsive Offset Compression
// =============================================================================

/** Minimum visible peek for a card (in px) before it collapses - must be large enough to click */
const MIN_VISIBLE_PEEK = 24;

/** Padding from viewport edges */
const VIEWPORT_PADDING = 16;

export type ResponsiveOffsetConfig = {
	viewportWidth: number;
	topCardWidth: number;
	secondCardWidth: number;
	totalCards: number;
	defaultPeekOffset: number;
	layoutMode: LayoutMode;
};

export type ResponsiveOffsetResult = {
	/** Compression ratio (1 = full, 0 = fully compressed) */
	compressionRatio: number;
	/** Whether cards should collapse to mobile/single-card mode */
	shouldCollapse: boolean;
	/** Adjusted peek offset after compression */
	adjustedPeekOffset: number;
	/** Available space for peek offsets */
	availableSpace: number;
};

/**
 * Calculate responsive offset compression based on viewport width.
 * As viewport shrinks, offsets compress until hitting mobile breakpoint.
 *
 * The algorithm:
 * 1. Calculate space needed: topCardWidth + secondCardWidth (for side-by-side)
 * 2. Calculate available space: viewportWidth - padding
 * 3. If not enough space, compress the second card's offset
 * 4. When compression reaches threshold, trigger collapse to mobile
 */
export function calculateResponsiveOffset(config: ResponsiveOffsetConfig): ResponsiveOffsetResult {
	const {
		viewportWidth,
		topCardWidth,
		secondCardWidth,
		totalCards,
		defaultPeekOffset,
		layoutMode,
	} = config;

	// Available viewport space (with padding)
	const availableWidth = viewportWidth - VIEWPORT_PADDING * 2;

	if (totalCards <= 1) {
		return {
			compressionRatio: 1,
			shouldCollapse: false,
			adjustedPeekOffset: defaultPeekOffset,
			availableSpace: availableWidth,
		};
	}

	if (layoutMode === 'side-by-side') {
		// Side-by-side: we want both cards fully visible
		// Ideal: topCardWidth + secondCardWidth
		const idealWidth = topCardWidth + secondCardWidth;

		if (availableWidth >= idealWidth) {
			// Plenty of space - full side-by-side
			return {
				compressionRatio: 1,
				shouldCollapse: false,
				adjustedPeekOffset: defaultPeekOffset,
				availableSpace: availableWidth - topCardWidth,
			};
		}

		// Calculate how much we need to compress
		// The second card gets pushed under the top card
		const overflow = idealWidth - availableWidth;
		const maxCompression = secondCardWidth - MIN_VISIBLE_PEEK;

		if (overflow >= maxCompression) {
			// Not enough space even with full compression - collapse to mobile
			return {
				compressionRatio: 0,
				shouldCollapse: true,
				adjustedPeekOffset: 0,
				availableSpace: 0,
			};
		}

		// Compress the offset - second card slides under top card
		// compressionRatio: 1 = full visibility, 0 = collapsed
		const compressionRatio = 1 - overflow / maxCompression;
		const adjustedSecondCardVisible = secondCardWidth - overflow;

		return {
			compressionRatio,
			shouldCollapse: false,
			adjustedPeekOffset: defaultPeekOffset * compressionRatio,
			availableSpace: adjustedSecondCardVisible,
		};
	}

	// Cascade mode: calculate based on peek offsets
	const cascadeDepth = totalCards - 1;
	const totalPeekNeeded = cascadeDepth * defaultPeekOffset;
	const idealWidth = topCardWidth + totalPeekNeeded;

	if (availableWidth >= idealWidth) {
		return {
			compressionRatio: 1,
			shouldCollapse: false,
			adjustedPeekOffset: defaultPeekOffset,
			availableSpace: totalPeekNeeded,
		};
	}

	// Compress peek offsets proportionally
	const availableForPeek = Math.max(0, availableWidth - topCardWidth);
	const minPeekNeeded = cascadeDepth * MIN_VISIBLE_PEEK;

	if (availableForPeek < minPeekNeeded) {
		// Not enough space - collapse
		return {
			compressionRatio: 0,
			shouldCollapse: true,
			adjustedPeekOffset: 0,
			availableSpace: 0,
		};
	}

	// Calculate compressed peek offset
	const compressionRatio = availableForPeek / totalPeekNeeded;
	const adjustedPeekOffset = defaultPeekOffset * compressionRatio;

	return {
		compressionRatio,
		shouldCollapse: false,
		adjustedPeekOffset: Math.max(MIN_VISIBLE_PEEK, adjustedPeekOffset),
		availableSpace: availableForPeek,
	};
}

/**
 * Get responsive card offset that compresses based on viewport.
 * Ensures every card has at least MIN_VISIBLE_PEEK visible past cards above it.
 */
export function getResponsiveCardOffset(
	cardIndex: number,
	totalCards: number,
	cards: CardSpec[],
	layoutMode: LayoutMode,
	topCardWidth: number,
	adjustedPeekOffset: number,
	compressionRatio: number,
	defaultWidth: number = 480,
): number {
	if (totalCards === 0) return 0;

	const cardsAbove = totalCards - cardIndex - 1;
	if (cardsAbove === 0) return 0;

	if (layoutMode === 'side-by-side') {
		// Helper to get card width
		const getWidth = (idx: number): number => {
			const card = cards[idx];
			const w = card?.width;
			if (w === undefined) return defaultWidth;
			if (typeof w === 'number') return w;
			if (w.endsWith('px')) return parseFloat(w) || defaultWidth;
			return defaultWidth;
		};

		// Helper to get ideal offset for any card index (using standard side-by-side formula)
		const getIdealOffset = (idx: number): number => {
			const cardsAboveIdx = totalCards - idx - 1;
			if (cardsAboveIdx === 0) return 0;
			if (cardsAboveIdx === 1) return topCardWidth * compressionRatio + adjustedPeekOffset * (1 - compressionRatio);
			const extraDepth = cardsAboveIdx - 1;
			const secondOffset = topCardWidth * compressionRatio + adjustedPeekOffset * (1 - compressionRatio);
			return secondOffset + extraDepth * adjustedPeekOffset;
		};

		// Compute adjusted offsets for ALL cards from top to bottom
		// This ensures cards account for adjustments made to cards above them
		//
		// Coordinate system (from viewport right edge):
		// - Card at offset O with width W has: right edge at O, left edge at O + W
		// - For card's left peek (24px) to be visible past cardAbove:
		//   currentCard.leftEdge - MIN_VISIBLE_PEEK > cardAbove.leftEdge
		//   (currentOffset + currentWidth - MIN_VISIBLE_PEEK) > (aboveOffset + aboveWidth)
		//   currentOffset > aboveOffset + aboveWidth - currentWidth + MIN_VISIBLE_PEEK

		const adjustedOffsets: number[] = new Array(totalCards).fill(0);

		// Process from top card (highest index) to bottom card (index 0)
		for (let idx = totalCards - 1; idx >= 0; idx--) {
			const ideal = getIdealOffset(idx);
			const width = getWidth(idx);

			// Check if this card allows being covered (escape hatch)
			const cardAtIdx = cards[idx];
			const allowCover = cardAtIdx?.allowCover ?? false;

			if (allowCover) {
				adjustedOffsets[idx] = ideal;
				continue;
			}

			// Find minimum offset needed to peek past all cards above
			let minRequired = 0;
			for (let j = idx + 1; j < totalCards; j++) {
				// Use the ADJUSTED offset of cards above (already computed)
				const aboveLeftEdge = adjustedOffsets[j] + getWidth(j);
				const required = aboveLeftEdge - width + MIN_VISIBLE_PEEK;
				minRequired = Math.max(minRequired, required);
			}

			adjustedOffsets[idx] = Math.max(ideal, minRequired);
		}

		return adjustedOffsets[cardIndex];
	}

	// Cascade mode - use adjusted peek offset
	const card = cards[cardIndex];
	const peekOffset = card?.peekOffset ?? adjustedPeekOffset;
	return cardsAbove * peekOffset * compressionRatio + cardsAbove * MIN_VISIBLE_PEEK * (1 - compressionRatio);
}

// =============================================================================
// Width Utilities
// =============================================================================

/**
 * Normalize width to CSS value.
 */
export function normalizeWidth(width: string | number | undefined, defaultWidth: string | number): string {
	if (width === undefined) {
		return typeof defaultWidth === 'number' ? `${defaultWidth}px` : defaultWidth;
	}
	return typeof width === 'number' ? `${width}px` : width;
}

/**
 * Parse width to pixels (for offset calculations).
 * Returns undefined if width cannot be parsed to pixels.
 */
export function parseWidthToPixels(width: string | number | undefined): number | undefined {
	if (width === undefined) return undefined;
	if (typeof width === 'number') return width;

	// Handle px values
	if (width.endsWith('px')) {
		const parsed = parseFloat(width);
		return isNaN(parsed) ? undefined : parsed;
	}

	// Handle rem values (assume 16px base)
	if (width.endsWith('rem')) {
		const parsed = parseFloat(width);
		return isNaN(parsed) ? undefined : parsed * 16;
	}

	// Can't parse percentage or other values without DOM measurement
	return undefined;
}

// =============================================================================
// Z-Index Utilities
// =============================================================================

/**
 * Calculate z-index for a card based on its position in the stack.
 */
export function getCardZIndex(cardIndex: number, zIndexBase: number): number {
	return zIndexBase + cardIndex * 10;
}

// =============================================================================
// Visibility Utilities
// =============================================================================

/**
 * Determine which cards should be rendered based on peekDepth.
 * Returns indices of cards that should be rendered (from bottom to top).
 */
export function getVisibleCardIndices(totalCards: number, peekDepth: number): number[] {
	if (totalCards === 0) return [];

	// Always render the top card
	const startIndex = Math.max(0, totalCards - peekDepth - 1);
	const indices: number[] = [];

	for (let i = startIndex; i < totalCards; i++) {
		indices.push(i);
	}

	return indices;
}

/**
 * Check if a card should be rendered based on peekDepth.
 */
export function isCardVisible(cardIndex: number, totalCards: number, peekDepth: number): boolean {
	if (totalCards === 0) return false;
	const startIndex = Math.max(0, totalCards - peekDepth - 1);
	return cardIndex >= startIndex;
}
