import { useSyncExternalStore } from 'react';

const MOBILE_BREAKPOINT = 768;

/**
 * Singleton manager for mobile breakpoint detection.
 * Uses a single MediaQueryList listener shared across all hook consumers.
 */
class MobileBreakpointManager {
	private static instance: MobileBreakpointManager | null = null;
	private listeners = new Set<() => void>();
	private mql: MediaQueryList | null = null;
	private _isMobile = false;

	private constructor() {
		if (typeof window === 'undefined') return;

		this.mql = window.matchMedia(`(max-width: ${MOBILE_BREAKPOINT - 1}px)`);
		this._isMobile = this.mql.matches;

		// Single event listener for entire app
		this.mql.addEventListener('change', this.handleChange, { passive: true });
	}

	static getInstance(): MobileBreakpointManager {
		if (!MobileBreakpointManager.instance) {
			MobileBreakpointManager.instance = new MobileBreakpointManager();
		}
		return MobileBreakpointManager.instance;
	}

	private handleChange = (e: MediaQueryListEvent) => {
		this._isMobile = e.matches;
		this.emit();
	};

	private emit() {
		this.listeners.forEach((listener) => listener());
	}

	subscribe = (listener: () => void): (() => void) => {
		this.listeners.add(listener);
		return () => this.listeners.delete(listener);
	};

	getSnapshot = (): boolean => {
		return this._isMobile;
	};

	getServerSnapshot = (): boolean => {
		return false; // Default to desktop on server
	};
}

/**
 * Hook to detect mobile viewport.
 * Uses useSyncExternalStore with singleton manager for optimal performance.
 * Multiple components can use this hook with only a single MediaQueryList listener.
 */
export function useIsMobile() {
	const manager = MobileBreakpointManager.getInstance();
	return useSyncExternalStore(manager.subscribe, manager.getSnapshot, manager.getServerSnapshot);
}
