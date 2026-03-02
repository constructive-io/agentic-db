// =============================================================================
// Stack Component - Navigation-style card manager
// =============================================================================

// Provider & Hooks
export {
	CardStackProvider,
	useCardStack,
	useStackContext,
	useStackLayoutMode,
	useStackCards,
	useIsTopCard,
	useCardIndex,
	useCardInjectedProps,
	useCardReady,
} from './stack-context';

// Viewport
export { CardStackViewport } from './stack-viewport';

// Sub-components (for customization)
export { StackBackdrop, type StackBackdropProps } from './stack-backdrop';
export { StackHeader, StackHeaderSlot, type StackHeaderProps, type StackHeaderSlotProps } from './stack-header';
export { StackCard, type StackCardProps } from './stack-card';
export { DeferredCardContent, type DeferredCardContentProps } from './deferred-card-content';

// Hooks
export { useStackResponsive, useIsMobile, type UseStackResponsiveResult } from './use-stack-responsive';
export { useStackGestures, type UseStackGesturesResult } from './use-stack-gestures';
export { usePeekGestures, type UsePeekGesturesOptions, type UsePeekGesturesResult } from './use-peek-gestures';

// Utilities
export {
	getCascadeOffset,
	getSideBySideOffset,
	getCardOffset,
	getResponsiveCardOffset,
	calculateResponsiveOffset,
	normalizeWidth,
	parseWidthToPixels,
	getCardZIndex,
	getVisibleCardIndices,
	isCardVisible,
	type ResponsiveOffsetConfig,
	type ResponsiveOffsetResult,
} from './stack-utils';

// Animation utilities
export {
	DEFAULT_ANIMATION_CONFIG,
	createCardVariants,
	createOffsetTransition,
	backdropVariants,
	snapBackSpring,
	swipeDismissTransition,
	peekHoverSpring,
	peekDragSpring,
	peekSlideSpring,
	createReducedMotionVariants,
	reducedMotionBackdropVariants,
} from './stack-animations';

// Types
export type {
	// Core
	CardId,
	CardComponent,
	CardInjectedProps,
	CardSpec,
	BackdropConfig,
	// Routes
	CardRouteDefinition,
	CardRouteMap,
	// Layout
	LayoutMode,
	// API
	CardStackApi,
	DismissOptions,
	PushOptions,
	CardPushOptions,
	// Props
	CardStackProviderProps,
	CardStackViewportProps,
	AnimationConfig,
	GestureConfig,
	PeekGestureConfig,
	MobileConfig,
	// Internal (for advanced customization)
	StackState,
	StackAction,
	StackContextValue,
} from './stack.types';
