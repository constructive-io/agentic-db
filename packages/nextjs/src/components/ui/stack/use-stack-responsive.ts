'use client';

import { useCallback, useEffect, useState } from 'react';

import type { MobileConfig } from './stack.types';

// =============================================================================
// Constants
// =============================================================================

const DEFAULT_MOBILE_BREAKPOINT = 768;

// =============================================================================
// Hook
// =============================================================================

export type UseStackResponsiveOptions = MobileConfig;

export type UseStackResponsiveResult = {
	/** Whether the current viewport is mobile-sized */
	isMobile: boolean;
	/** Current viewport width */
	viewportWidth: number;
	/** The breakpoint being used */
	breakpoint: number;
};

/**
 * Hook to detect mobile viewport and provide responsive information.
 */
export function useStackResponsive(
	options: UseStackResponsiveOptions = {},
): UseStackResponsiveResult {
	const { breakpoint = DEFAULT_MOBILE_BREAKPOINT } = options;

	// Initialize with SSR-safe defaults
	const [state, setState] = useState<{ isMobile: boolean; viewportWidth: number }>(() => {
		// During SSR, assume desktop
		if (typeof window === 'undefined') {
			return { isMobile: false, viewportWidth: 1024 };
		}
		const width = window.innerWidth;
		return { isMobile: width < breakpoint, viewportWidth: width };
	});

	const updateState = useCallback(() => {
		const width = window.innerWidth;
		setState((prev) => {
			const isMobile = width < breakpoint;
			if (prev.isMobile === isMobile && prev.viewportWidth === width) {
				return prev;
			}
			return { isMobile, viewportWidth: width };
		});
	}, [breakpoint]);

	useEffect(() => {
		// Update on mount (in case SSR assumption was wrong)
		updateState();

		// Listen for resize
		window.addEventListener('resize', updateState);
		return () => window.removeEventListener('resize', updateState);
	}, [updateState]);

	return {
		isMobile: state.isMobile,
		viewportWidth: state.viewportWidth,
		breakpoint,
	};
}

/**
 * Simple hook to just get isMobile boolean.
 */
export function useIsMobile(breakpoint = DEFAULT_MOBILE_BREAKPOINT): boolean {
	const { isMobile } = useStackResponsive({ breakpoint });
	return isMobile;
}
