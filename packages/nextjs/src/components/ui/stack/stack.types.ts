import type { ComponentType } from 'react';

// =============================================================================
// Core Types
// =============================================================================

export type CardId = string;

export type CardComponent<P = unknown> = ComponentType<P & CardInjectedProps>;

/** Configuration for the stack backdrop overlay */
export type BackdropConfig = {
	/** Enable backdrop blur effect (default: false) */
	blur?: boolean;
	/** Custom class name for full styling control */
	className?: string;
};

/** Props injected into every card component */
export type CardInjectedProps = {
	card: {
		id: CardId;
		/**
		 * Push a new card from this card.
		 * Default: replaces all cards above this card, then pushes the new card.
		 * Use { append: true } to just push on top of the entire stack.
		 */
		push: <P>(card: Omit<CardSpec<P>, 'id'> & { id?: CardId }, options?: CardPushOptions) => CardId;
		close: () => void;
		setTitle: (title?: string) => void;
		setDescription: (description?: string) => void;
		setWidth: (width?: string | number) => void;
		updateProps: <P>(patch: Partial<P> | ((prev: P) => P)) => void;
	};
};

export type CardSpec<P = unknown> = {
	/** Unique identifier for this card instance */
	id: CardId;
	/** Display title in card header */
	title?: string;
	/** Display description/subtitle in card header */
	description?: string;
	/** Header size variant - controls title/description size, weight, and height */
	headerSize?: 'sm' | 'md' | 'lg';
	/** React component to render */
	Component: CardComponent<P>;
	/** Props passed to Component (excluding injected card props) */
	props?: P;
	/** Width override (CSS value) - default: 480px */
	width?: string | number;
	/** Custom peek offset for this card when cards stack above it (default: 24px) */
	peekOffset?: number;
	/**
	 * When true, this card can be fully covered by cards above it (no guaranteed peek).
	 * Use this escape hatch for cards where visibility isn't required when buried in stack.
	 * Default: false (card always peeks past cards above it)
	 */
	allowCover?: boolean;
	/**
	 * Show backdrop behind the stack when this card is the first card.
	 * Default: inherits from CardStackViewport's backdrop prop (true).
	 * Set to false for panel/sidebar-like cards that shouldn't obscure background.
	 * Pass an object to configure blur and styling.
	 */
	backdrop?: boolean | BackdropConfig;
	/**
	 * Callback fired when this card is removed from the stack.
	 * Fires regardless of how the card was closed (swipe, backdrop, escape, api.dismiss, etc.)
	 */
	onClose?: () => void;
	/** Arbitrary metadata for analytics/debugging */
	meta?: Record<string, unknown>;
};

// =============================================================================
// Route Registry
// =============================================================================

export type CardRouteDefinition<P = unknown> = {
	/** Component to render for this route */
	Component: CardComponent<P>;
	/** Generate unique ID from props (default: route key) */
	getId?: (props?: P) => CardId;
	/** Default title for cards opened via this route */
	defaultTitle?: string;
	/** Default width for cards opened via this route */
	defaultWidth?: string | number;
	/** Default peek offset for cards opened via this route */
	defaultPeekOffset?: number;
};

export type CardRouteMap = Record<string, CardRouteDefinition<unknown>>;

// =============================================================================
// Layout Mode
// =============================================================================

export type LayoutMode = 'cascade' | 'side-by-side';

// =============================================================================
// Stack API
// =============================================================================

/** Options for dismiss operation */
export type DismissOptions = {
	/**
	 * When true (default), dismissing a card also dismisses all cards above it.
	 * When false, only the specified card is removed (escape hatch).
	 */
	cascade?: boolean;
};

/** Options for push operation */
export type PushOptions = {
	/**
	 * If provided, removes all cards above this card ID before pushing.
	 * Used internally by card.push() to implement replace-from-current behavior.
	 */
	replaceFrom?: CardId;
};

/** Options for push from within a card (injected card.push) */
export type CardPushOptions = {
	/**
	 * When true, just push on top of the entire stack (escape hatch).
	 * When false (default), replace cards above the current card first.
	 */
	append?: boolean;
};

export type CardStackApi = {
	// === Read Operations ===

	/** Get the topmost card spec, or null if empty */
	top: () => CardSpec | null;

	/** Get the ID of the topmost card, or null if empty */
	currentId: () => CardId | null;

	/** Check if stack has cards that can be popped */
	canPop: () => boolean;

	/** Get total number of cards in stack */
	size: () => number;

	/** Get a specific card by ID, or null if not found */
	get: (id: CardId) => CardSpec | null;

	/** Get all cards in stack (bottom to top order) */
	getAll: () => CardSpec[];

	/** Check if a specific card exists in the stack */
	has: (id: CardId) => boolean;

	// === Navigation Operations ===

	/**
	 * Push a new card onto the stack. Returns the card ID.
	 * Use { replaceFrom: cardId } to remove cards above that card first.
	 */
	push: <P>(card: CardSpec<P>, options?: PushOptions) => CardId;

	/** Push a card by registered route key. Returns the card ID. */
	pushRoute: <P>(
		route: string,
		props?: P,
		opts?: { id?: CardId; title?: string; width?: string | number },
	) => CardId;

	/** Pop one or more cards from the stack */
	pop: (count?: number) => void;

	/** Pop cards until the specified ID is on top */
	popTo: (id: CardId) => void;

	/** Replace the top card with a new one. Returns the new card ID. */
	replaceTop: <P>(card: CardSpec<P>) => CardId;

	/** Reset the entire stack to a specific set of cards */
	reset: (cards: CardSpec[]) => void;

	/** Clear all cards from the stack */
	clear: () => void;

	// === Card Updates ===

	/** Update props for a specific card */
	updateProps: <P>(id: CardId, patch: Partial<P> | ((prev: P) => P)) => void;

	/** Update the title for a specific card */
	setTitle: (id: CardId, title?: string) => void;

	/** Update the description for a specific card */
	setDescription: (id: CardId, description?: string) => void;

	/** Update the width for a specific card */
	setWidth: (id: CardId, width?: string | number) => void;

	// === Advanced Operations ===

	/**
	 * Remove a card from the stack.
	 * By default (cascade: true), also removes all cards above it.
	 * Use { cascade: false } to remove only the specified card.
	 */
	dismiss: (id: CardId, options?: DismissOptions) => void;

	/** Insert a card at a specific index (0 = bottom) */
	insertAt: <P>(index: number, card: CardSpec<P>) => CardId;
};

// =============================================================================
// Provider Props
// =============================================================================

export type CardStackProviderProps = {
	children: React.ReactNode;
	/** Route registry for string-based navigation */
	routes?: CardRouteMap;
	/** Initial stack state */
	initial?: CardSpec[];
	/** Callback when stack changes */
	onChange?: (stack: CardSpec[]) => void;
	/** Z-index base for the stack (default: 100) */
	zIndexBase?: number;
	/**
	 * Layout mode for visible cards:
	 * - 'cascade': Cards peek behind each other with offset (default)
	 * - 'side-by-side': Second card pushed fully left, creating master-detail layout
	 */
	layoutMode?: LayoutMode;
	/** Default peek offset in pixels (default: 24) */
	defaultPeekOffset?: number;
	/** Default card width (default: 480) */
	defaultWidth?: string | number;
};

// =============================================================================
// Viewport Props
// =============================================================================

export type AnimationConfig = {
	/** Entry/exit duration in seconds (default: 0.2) */
	duration?: number;
	/** Entry easing (default: [0.32, 0.72, 0, 1]) */
	enterEase?: number[];
	/** Exit easing (default: [0.4, 0, 0.6, 1]) */
	exitEase?: number[];
};

export type GestureConfig = {
	/** Enable swipe-right-to-pop gesture (default: true on mobile) */
	swipeToPop?: boolean;
	/** Minimum swipe distance to trigger pop (default: 35% of viewport width, min 120px) */
	swipeThreshold?: number;
	/** Velocity threshold for quick swipe (default: 600px/s, requires minimum distance) */
	velocityThreshold?: number;
	/** Auto-dismiss X position while dragging (default: 80% of viewport width) */
	autoDismissThreshold?: number;
};

export type PeekGestureConfig = {
	/** Enable peek zone interactions (default: true) */
	enabled?: boolean;
	/** Enable drag-to-dismiss on peek zone (default: true) */
	dragToDismiss?: boolean;
	/** Hover expansion in pixels (default: 48) */
	hoverExpansion?: number;
	/** Minimum drag distance to trigger dismiss (default: 80px) */
	dragThreshold?: number;
	/** Velocity threshold for quick drag dismiss (default: 400px/s) */
	dragVelocityThreshold?: number;
};

export type MobileConfig = {
	/** Breakpoint for mobile behavior in pixels (default: 768) */
	breakpoint?: number;
	/** Force full-screen cards on mobile (default: true) */
	fullScreen?: boolean;
	/** Gesture configuration for mobile */
	gestures?: GestureConfig;
};

export type CardStackViewportProps = {
	/** Show backdrop behind first card (default: true). Pass object to configure blur/styling. */
	backdrop?: boolean | BackdropConfig;
	/** Custom backdrop element */
	renderBackdrop?: () => React.ReactNode;
	/** Custom header renderer per card */
	renderHeader?: (card: CardSpec, api: CardStackApi) => React.ReactNode;
	/** Custom empty state when stack is empty */
	renderEmpty?: () => React.ReactNode;
	/** Number of previous cards to render for peek effect (default: 2) */
	peekDepth?: number;
	/** Animation configuration */
	animation?: AnimationConfig;
	/** Mobile-specific configuration */
	mobile?: MobileConfig;
	/** Peek zone gesture configuration */
	peekGestures?: PeekGestureConfig;
	/** Additional class for viewport container */
	className?: string;
};

// =============================================================================
// Internal State
// =============================================================================

export type StackState = {
	cards: CardSpec[];
};

export type StackAction =
	| { type: 'PUSH'; card: CardSpec }
	| { type: 'POP'; count: number }
	| { type: 'POP_TO'; id: CardId }
	| { type: 'REPLACE_TOP'; card: CardSpec }
	| { type: 'RESET'; cards: CardSpec[] }
	| { type: 'CLEAR' }
	| { type: 'UPDATE_PROPS'; id: CardId; patch: unknown }
	| { type: 'SET_TITLE'; id: CardId; title?: string }
	| { type: 'SET_DESCRIPTION'; id: CardId; description?: string }
	| { type: 'SET_WIDTH'; id: CardId; width?: string | number }
	| { type: 'DISMISS'; id: CardId; cascade: boolean }
	| { type: 'INSERT_AT'; index: number; card: CardSpec };

// =============================================================================
// Internal Context
// =============================================================================

export type StackContextValue = {
	state: StackState;
	api: CardStackApi;
	config: {
		routes: CardRouteMap;
		zIndexBase: number;
		layoutMode: LayoutMode;
		defaultPeekOffset: number;
		defaultWidth: string | number;
	};
};
