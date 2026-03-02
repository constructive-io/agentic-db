import type { Transition, Variants } from 'motion/react';

import type { AnimationConfig } from './stack.types';

// =============================================================================
// Default Animation Config
// =============================================================================

export const DEFAULT_ANIMATION_CONFIG: Required<AnimationConfig> = {
	duration: 0.2,
	enterEase: [0.32, 0.72, 0, 1], // Snappy entrance
	exitEase: [0.4, 0, 0.6, 1], // Physical exit
};

// =============================================================================
// Card Variants
// =============================================================================

/**
 * Create motion variants for card enter/exit animations.
 * Uses transform-only properties for GPU compositing.
 */
export function createCardVariants(config: AnimationConfig = {}): Variants {
	const { duration, enterEase, exitEase } = {
		...DEFAULT_ANIMATION_CONFIG,
		...config,
	};

	return {
		initial: {
			x: '100%',
		},
		animate: {
			x: 0,
			transition: {
				type: 'tween',
				duration,
				ease: enterEase as [number, number, number, number],
			},
		},
		exit: {
			x: '100%',
			transition: {
				type: 'tween',
				duration,
				ease: exitEase as [number, number, number, number],
			},
		},
	};
}

/**
 * Create transition for offset animations (when cards above change).
 * Uses spring for playful slide-back feel when cards are dismissed.
 */
export function createOffsetTransition(_config: AnimationConfig = {}): Transition {
	return {
		type: 'spring',
		stiffness: 300,
		damping: 30,
		mass: 0.8,
	};
}

// =============================================================================
// Backdrop Variants
// =============================================================================

export const backdropVariants: Variants = {
	initial: {
		opacity: 0,
	},
	animate: {
		opacity: 1,
		transition: {
			duration: 0.2,
			ease: 'easeOut',
		},
	},
	exit: {
		opacity: 0,
		transition: {
			duration: 0.25,
			ease: [0.4, 0, 0.6, 1], // Match card exit easing
		},
	},
};

// =============================================================================
// Gesture Animation
// =============================================================================

/**
 * Create spring config for snap-back animation after cancelled swipe.
 */
export const snapBackSpring: Transition = {
	type: 'spring',
	stiffness: 400,
	damping: 30,
	mass: 0.8,
};

/**
 * Create transition for swipe-to-dismiss.
 */
export const swipeDismissTransition: Transition = {
	type: 'tween',
	duration: 0.2,
	ease: [0.4, 0, 0.6, 1],
};

/**
 * Exit transition for the last card - coordinated slide + fade.
 * Uses tween (not spring) for smooth opacity animation.
 */
export const lastCardExitTransition: Transition = {
	type: 'tween',
	duration: 0.25,
	ease: [0.4, 0, 0.6, 1], // Physical exit easing
};

// =============================================================================
// Peek Zone Animation
// =============================================================================

/** Spring config for peek hover expansion - playful and bouncy */
export const peekHoverSpring: Transition = {
	type: 'spring',
	stiffness: 500,
	damping: 25,
	mass: 0.6,
};

/** Spring config for peek drag - responsive during interaction */
export const peekDragSpring: Transition = {
	type: 'spring',
	stiffness: 600,
	damping: 35,
	mass: 0.5,
};

/** Spring config for multi-card slide during peek drag */
export const peekSlideSpring: Transition = {
	type: 'spring',
	stiffness: 400,
	damping: 30,
	mass: 0.7,
};

// =============================================================================
// Reduced Motion
// =============================================================================

/**
 * Create variants with reduced motion support.
 * Instant transitions when user prefers reduced motion.
 */
export function createReducedMotionVariants(): Variants {
	return {
		initial: {
			x: 0,
			opacity: 0,
		},
		animate: {
			x: 0,
			opacity: 1,
			transition: { duration: 0 },
		},
		exit: {
			x: 0,
			opacity: 0,
			transition: { duration: 0 },
		},
	};
}

export const reducedMotionBackdropVariants: Variants = {
	initial: { opacity: 0 },
	animate: { opacity: 1, transition: { duration: 0 } },
	exit: { opacity: 0, transition: { duration: 0 } },
};
