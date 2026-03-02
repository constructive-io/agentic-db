import type { ApiToken } from '@/store/auth-slice';
import type { SchemaContext } from '@/app-config';
import { createLogger } from '@/lib/logger';

const logger = createLogger({ scope: 'token-manager' });

const TOKEN_STORAGE_KEY = 'constructive-auth-token:schema-builder';
const REMEMBER_ME_KEY = 'constructive-remember-me:schema-builder';

/**
 * Token manager for handling token persistence
 * Uses localStorage for persistent storage (remember me) or sessionStorage for session-only
 */
export class TokenManager {
	// In-memory cache to minimize storage reads
	private static cached: { token: ApiToken | null; rememberMe: boolean } | null = null;

	// Sync between tabs via storage events
	static initStorageSync(): void {
		if (typeof window === 'undefined') return;
		if ((window as any).__constructive_token_sync__) return; // idempotent
		(window as any).__constructive_token_sync__ = true;
		window.addEventListener('storage', (e) => {
			if (!e.key) return;
			if (e.key === TOKEN_STORAGE_KEY || e.key === REMEMBER_ME_KEY) {
				TokenManager.cached = null;
			}
		});
	}

	/**
	 * Store token with appropriate persistence based on remember me preference
	 */
	static setToken(
		token: ApiToken,
		rememberMe: boolean = false,
		_ctx?: SchemaContext,
	): void {
		try {
			const tokenData = JSON.stringify(token);
			const storage = rememberMe ? localStorage : sessionStorage;

			storage.setItem(TOKEN_STORAGE_KEY, tokenData);

			// Store remember me preference in localStorage for consistency
			localStorage.setItem(REMEMBER_ME_KEY, JSON.stringify(rememberMe));

			// Update in-memory cache
			TokenManager.cached = { token, rememberMe };
		} catch (e) {
			logger.warn('Failed to persist token', { error: e });
		}
	}

	/**
	 * Retrieve token from storage.
	 * Checks both localStorage and sessionStorage.
	 */
	static getToken(
		_ctx?: SchemaContext,
		_scope?: string | null,
	): { token: ApiToken | null; rememberMe: boolean } {
		try {
			// Fast path: return cached values if present
			if (TokenManager.cached) {
				return TokenManager.cached;
			}

			// Check remember me preference first
			const rememberMeStr = localStorage.getItem(REMEMBER_ME_KEY);
			const rememberMe = rememberMeStr ? JSON.parse(rememberMeStr) : false;

			// Try to get token from appropriate storage
			const storage = rememberMe ? localStorage : sessionStorage;
			const tokenStr = storage.getItem(TOKEN_STORAGE_KEY);

			if (!tokenStr) {
				// If not found in expected storage, try the other one
				const alternativeStorage = rememberMe ? sessionStorage : localStorage;
				const alternativeTokenStr = alternativeStorage.getItem(TOKEN_STORAGE_KEY);

				if (alternativeTokenStr) {
					const token = JSON.parse(alternativeTokenStr) as ApiToken;
					TokenManager.cached = { token, rememberMe };
					return { token, rememberMe };
				}

				return { token: null, rememberMe: false };
			}

			const token = JSON.parse(tokenStr) as ApiToken;
			const result = { token, rememberMe } as const;
			TokenManager.cached = { token, rememberMe };
			return result;
		} catch (e) {
			logger.warn('Failed to read token from storage', { error: e });
			return { token: null, rememberMe: false };
		}
	}

	/**
	 * Remove token from all storage locations
	 */
	static clearToken(_ctx?: SchemaContext, _scope?: string | null): void {
		try {
			localStorage.removeItem(TOKEN_STORAGE_KEY);
			sessionStorage.removeItem(TOKEN_STORAGE_KEY);
			localStorage.removeItem(REMEMBER_ME_KEY);
			TokenManager.cached = null;
		} catch (e) {
			logger.warn('Failed to clear token from storage', { error: e });
		}
	}

	/**
	 * Check if token exists in storage
	 */
	static hasToken(_ctx?: SchemaContext): boolean {
		try {
			const hasInLocal = localStorage.getItem(TOKEN_STORAGE_KEY) !== null;
			const hasInSession = sessionStorage.getItem(TOKEN_STORAGE_KEY) !== null;
			return hasInLocal || hasInSession;
		} catch {
			return false;
		}
	}

	/**
	 * Check if token is expired
	 */
	static isTokenExpired(token: ApiToken): boolean {
		try {
			const expiresAtMs = this.parseExpiresAtMs(token.accessTokenExpiresAt);
			if (!Number.isFinite(expiresAtMs)) return true;
			const now = new Date();

			// Add 5 minute buffer before expiration
			const bufferTime = 5 * 60 * 1000; // 5 minutes in milliseconds
			return now.getTime() >= expiresAtMs - bufferTime;
		} catch {
			// Assume expired if we can't parse the date
			return true;
		}
	}

	/**
	 * Get time until token expires (in milliseconds)
	 * Returns 0 if token is expired or invalid
	 */
	static getTimeUntilExpiration(token: ApiToken): number {
		try {
			const expiresAtMs = this.parseExpiresAtMs(token.accessTokenExpiresAt);
			if (!Number.isFinite(expiresAtMs)) return Number.NaN;
			const now = Date.now();
			const timeUntilExpiration = expiresAtMs - now;
			return timeUntilExpiration;
		} catch {
			// Token parsing failed, consider it expired
			return 0;
		}
	}

	/**
	 * Format token for Authorization header
	 */
	static formatAuthHeader(token: ApiToken): string {
		return `Bearer ${token.accessToken}`;
	}

	/**
	 * Migrate token from old storage format if needed
	 * This can be used for backwards compatibility
	 */
	static migrateTokenStorage(): void {
		// Implementation for migrating from old token storage format
		// Can be expanded as needed for future migrations
	}

	/**
	 * Parse ISO date string with potential microseconds into a valid JS timestamp (ms)
	 */
	private static parseExpiresAtMs(value: string): number {
		try {
			let s = value;
			const dot = s.indexOf('.');
			if (dot !== -1) {
				// find timezone start (Z, +, or -) after the fractional seconds
				let tzPos = s.indexOf('Z', dot);
				if (tzPos === -1) {
					const plus = s.indexOf('+', dot);
					const minus = s.indexOf('-', dot);
					tzPos = plus !== -1 && minus !== -1 ? Math.min(plus, minus) : Math.max(plus, minus);
				}
				const end = tzPos !== -1 ? tzPos : s.length;
				const frac = s.slice(dot + 1, end).replace(/[^0-9]/g, '');
				const frac3 = (frac.slice(0, 3) || '').padEnd(3, '0');
				s = s.slice(0, dot) + '.' + frac3 + (tzPos !== -1 ? s.slice(tzPos) : '');
			}
			const ms = Date.parse(s);
			return ms;
		} catch {
			return Number.NaN;
		}
	}
}
