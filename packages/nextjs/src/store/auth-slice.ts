/**
 * Auth slice — schema-builder (app-level) authentication only.
 *
 * No external dependencies on state-management libraries.
 * State is held by the vanilla AppStore defined in app-store.ts.
 */

/**
 * User profile information
 */
export interface UserProfile {
	id: string;
	email: string;
}

/**
 * API Token information from GraphQL
 */
export interface ApiToken {
	id: string;
	userId: string;
	accessToken: string;
	accessTokenExpiresAt: string; // ISO datetime string
	createdAt?: string;
	ip?: string;
	origin?: string;
	otToken?: string;
	uagent?: string;
}

/**
 * Authentication state
 */
export interface AuthState {
	isAuthenticated: boolean;
	isLoading: boolean;
	user: UserProfile | null;
	token: ApiToken | null;
	rememberMe: boolean;
}

export const initialAuthState: AuthState = {
	isAuthenticated: false,
	isLoading: true,
	user: null,
	token: null,
	rememberMe: false,
};

const getUnauthenticatedState = (): AuthState => ({
	isAuthenticated: false,
	isLoading: false,
	user: null,
	token: null,
	rememberMe: false,
});

// ── Serialization ──────────────────────────────────────────────────────

export function serializeAuth(auth: AuthState): Partial<AuthState> | null {
	if (!auth.rememberMe) return null;
	return { ...auth, isLoading: false };
}

export function deserializeAuth(raw: unknown): AuthState {
	const auth = raw as AuthState | undefined;
	if (!auth?.rememberMe || !auth.token) return getUnauthenticatedState();
	try {
		if (new Date() >= new Date(auth.token.accessTokenExpiresAt)) {
			return getUnauthenticatedState();
		}
	} catch {
		return getUnauthenticatedState();
	}
	// Valid — set loading=true so AuthProvider can finalize
	return { ...auth, isLoading: true };
}

// ── Helpers (pure, used by hooks) ──────────────────────────────────────

export function isTokenExpired(token: ApiToken | null): boolean {
	if (!token) return true;
	const bufferTime = 5 * 60 * 1000; // 5 minutes
	return Date.now() >= new Date(token.accessTokenExpiresAt).getTime() - bufferTime;
}

export function getAuthHeader(auth: AuthState): string | null {
	if (!auth.isAuthenticated || !auth.token) return null;
	return `Bearer ${auth.token.accessToken}`;
}
