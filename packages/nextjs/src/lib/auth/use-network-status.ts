'use client';

import { useEffect, useState, useSyncExternalStore } from 'react';

/**
 * Singleton manager for network status events.
 * Uses a single pair of event listeners shared across all hook consumers.
 * Prevents duplicate listeners when multiple components use useNetworkStatus().
 */
class NetworkStatusManager {
	private static instance: NetworkStatusManager | null = null;
	private listeners = new Set<() => void>();
	private _isOnline = true;

	private constructor() {
		if (typeof window === 'undefined') return;

		this._isOnline = navigator.onLine;

		// Single event listeners for entire app
		window.addEventListener('online', this.handleOnline, { passive: true });
		window.addEventListener('offline', this.handleOffline, { passive: true });
	}

	static getInstance(): NetworkStatusManager {
		if (!NetworkStatusManager.instance) {
			NetworkStatusManager.instance = new NetworkStatusManager();
		}
		return NetworkStatusManager.instance;
	}

	private handleOnline = () => {
		this._isOnline = true;
		this.emit();
	};

	private handleOffline = () => {
		this._isOnline = false;
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
		return this._isOnline;
	};

	getServerSnapshot = (): boolean => {
		return true; // Assume online on server
	};
}

/**
 * Hook to monitor network connectivity status.
 * Uses useSyncExternalStore with singleton manager for optimal performance.
 * Multiple components can use this hook with only a single event listener pair.
 */
export function useNetworkStatus() {
	const manager = NetworkStatusManager.getInstance();

	const isOnline = useSyncExternalStore(manager.subscribe, manager.getSnapshot, manager.getServerSnapshot);

	const [wasOffline, setWasOffline] = useState(false);

	useEffect(() => {
		if (!isOnline) {
			setWasOffline(true);
		}
	}, [isOnline]);

	// Reset wasOffline when user acknowledges reconnection
	const justReconnected = isOnline && wasOffline;

	useEffect(() => {
		if (justReconnected) {
			// Auto-reset after a brief delay
			const timer = setTimeout(() => setWasOffline(false), 5000);
			return () => clearTimeout(timer);
		}
	}, [justReconnected]);

	return {
		isOnline,
		isOffline: !isOnline,
		wasOffline,
		justReconnected,
	};
}

/**
 * Enhanced network status with retry logic
 */
export function useNetworkStatusWithRetry() {
	const { isOnline, isOffline, wasOffline, justReconnected } = useNetworkStatus();
	const [retryCount, setRetryCount] = useState(0);
	const [isRetrying, setIsRetrying] = useState(false);

	const retry = async (fn: () => Promise<void>, maxRetries = 3) => {
		if (!isOnline) {
			throw new Error('Cannot retry while offline');
		}

		setIsRetrying(true);
		let attempts = 0;

		while (attempts < maxRetries) {
			try {
				await fn();
				setRetryCount(0);
				setIsRetrying(false);
				return;
			} catch (error) {
				attempts++;
				setRetryCount(attempts);

				if (attempts >= maxRetries) {
					setIsRetrying(false);
					throw error;
				}

				// Wait before retry (exponential backoff)
				await new Promise((resolve) => setTimeout(resolve, Math.pow(2, attempts) * 1000));
			}
		}
	};

	// Reset retry count when coming back online
	useEffect(() => {
		if (justReconnected) {
			setRetryCount(0);
			setIsRetrying(false);
		}
	}, [justReconnected]);

	return {
		isOnline,
		isOffline,
		wasOffline,
		justReconnected,
		retryCount,
		isRetrying,
		retry,
		canRetry: isOnline && !isRetrying,
	};
}
