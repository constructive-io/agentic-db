import type { Transition } from 'motion/react';

/**
 * Shared motion configuration for consistent animations across the app.
 * Based on practical animation tips from https://emilkowal.ski/ui/7-practical-animation-tips
 *
 * Key principles:
 * 1. Keep UI animations under 300ms
 * 2. Never animate from scale(0) - use 0.9+ for natural feel
 * 3. Use custom easing curves for more impactful animations
 * 4. Make animations origin-aware when possible
 * 5. Use blur to smooth transitions when needed
 */

// =============================================================================
// Easing Curves
// =============================================================================

/**
 * Standard easing curves for UI animations.
 * Reference: https://easings.co/
 */
export const easings = {
	/** Smooth deceleration - good for elements entering the screen */
	easeOut: [0.25, 0.1, 0.25, 1] as const,

	/** Smooth acceleration - good for elements leaving the screen */
	easeIn: [0.42, 0, 1, 1] as const,

	/** Smooth both ways - good for hover states and toggles */
	easeInOut: [0.42, 0, 0.58, 1] as const,

	/** Snappy entrance with soft landing - great for modals/dialogs */
	snappy: [0.2, 0, 0, 1] as const,

	/** Bouncy feel - use sparingly for playful interactions */
	bounce: [0.34, 1.56, 0.64, 1] as const,

	/** Quick start, gradual stop - good for quick feedback */
	emphasized: [0.4, 0, 0.2, 1] as const,

	/** Physical feel for exit animations */
	physicalExit: [0.4, 0, 0.6, 1] as const,
} as const;

// =============================================================================
// Duration Presets
// =============================================================================

/**
 * Duration presets in seconds.
 * Rule: UI animations should be under 300ms (0.3s)
 */
export const durations = {
	/** Instant feedback (button press, toggle) */
	instant: 0.1,

	/** Quick transitions (tooltips, small elements) */
	fast: 0.15,

	/** Standard UI transitions (modals, panels) */
	normal: 0.2,

	/** Deliberate animations (page transitions, complex reveals) */
	slow: 0.3,

	/** Maximum for UI - use rarely */
	deliberate: 0.4,
} as const;

// =============================================================================
// Spring Presets
// =============================================================================

/**
 * Spring configurations for physics-based animations.
 * These create more natural, organic motion.
 */
export const springs = {
	/** Snappy spring - good for quick interactions */
	snappy: {
		type: 'spring' as const,
		stiffness: 400,
		damping: 30,
		mass: 0.8,
	},

	/** Bouncy spring - good for playful elements */
	bouncy: {
		type: 'spring' as const,
		stiffness: 300,
		damping: 20,
		mass: 0.6,
	},

	/** Gentle spring - good for large elements */
	gentle: {
		type: 'spring' as const,
		stiffness: 150,
		damping: 25,
		mass: 1,
	},

	/** Stiff spring - good for precise movements */
	stiff: {
		type: 'spring' as const,
		stiffness: 500,
		damping: 35,
		mass: 0.5,
	},

	/** Panel/sheet animations */
	panel: {
		type: 'spring' as const,
		stiffness: 150,
		damping: 25,
	},
} as const;

// =============================================================================
// Transition Presets
// =============================================================================

/**
 * Pre-configured transitions for common animation patterns.
 */
export const transitions = {
	/** Fast fade for overlays and simple elements */
	fade: {
		duration: durations.fast,
		ease: easings.easeOut,
	} satisfies Transition,

	/** Standard enter/exit for UI elements */
	enterExit: {
		duration: durations.normal,
		ease: easings.easeOut,
	} satisfies Transition,

	/** Snappy transition for interactive elements */
	snappy: {
		duration: durations.fast,
		ease: easings.snappy,
	} satisfies Transition,

	/** Panel slide transition */
	panel: {
		type: 'spring',
		stiffness: 150,
		damping: 25,
	} satisfies Transition,

	/** Exit transition with physical feel */
	exit: {
		type: 'tween',
		duration: durations.normal,
		ease: easings.physicalExit,
	} satisfies Transition,

	/** Layout animations */
	layout: {
		type: 'spring',
		stiffness: 300,
		damping: 30,
	} satisfies Transition,
} as const;

// =============================================================================
// Animation Variants
// =============================================================================

/**
 * Common animation variants for AnimatePresence patterns.
 * Follows the rule: never animate from scale(0), use 0.9+ instead.
 */
export const variants = {
	/** Fade with subtle scale - good for modals, cards */
	fadeScale: {
		initial: { opacity: 0, scale: 0.95 },
		animate: { opacity: 1, scale: 1 },
		exit: { opacity: 0, scale: 0.95 },
	},

	/** Fade with subtle slide up - good for content reveals */
	fadeSlideUp: {
		initial: { opacity: 0, y: 8 },
		animate: { opacity: 1, y: 0 },
		exit: { opacity: 0, y: -8 },
	},

	/** Fade with subtle slide down - good for dropdowns */
	fadeSlideDown: {
		initial: { opacity: 0, y: -8 },
		animate: { opacity: 1, y: 0 },
		exit: { opacity: 0, y: 8 },
	},

	/** Simple fade - for overlays */
	fade: {
		initial: { opacity: 0 },
		animate: { opacity: 1 },
		exit: { opacity: 0 },
	},

	/** Dock/floating element - scales from bottom */
	floatUp: {
		initial: { opacity: 0, y: 8, scale: 0.98 },
		animate: { opacity: 1, y: 0, scale: 1 },
		exit: { opacity: 0, y: 8, scale: 0.98 },
	},
} as const;
