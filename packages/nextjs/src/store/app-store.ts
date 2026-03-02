/**
 * The store is a plain JS singleton. React components subscribe via the
 * exported hooks which use `useSyncExternalStore` under the hood.
 */
import { useSyncExternalStore, useCallback, useRef } from 'react';

import { TokenManager } from '@/lib/auth/token-manager';
import { createLogger } from '@/lib/logger';
import { queryClient } from '@/lib/query-client';
import type { SchemaContext } from '@/lib/runtime/config-core';
import { schemaContexts } from '@/lib/runtime/config-core';

import {
	type AuthState,
	type UserProfile,
	type ApiToken,
	initialAuthState,
	serializeAuth,
	deserializeAuth,
	isTokenExpired,
	getAuthHeader,
} from './auth-slice';
import {
	type EnvState,
	createInitialEnvState,
	getEffectiveEndpoint as getEffectiveEndpointHelper,
	persistEndpointOverride,
	serializeEnv,
	deserializeEnv,
} from './env-slice';
import {
	type PreferencesState,
	initialPreferencesState,
	serializePreferences,
	deserializePreferences,
} from './preferences-slice';

// Re-export slice types for consumers
export type { AuthState, UserProfile, ApiToken } from './auth-slice';
export type { EnvState } from './env-slice';
export type { PreferencesState, SidebarSectionsExpanded } from './preferences-slice';

// ── Combined state ─────────────────────────────────────────────────────

export interface AppState {
	auth: AuthState;
	env: EnvState;
	preferences: PreferencesState;
}

// ── Persistence ────────────────────────────────────────────────────────

const STORAGE_KEY = 'constructive-app-store';

function loadPersistedState(): Partial<AppState> {
	try {
		if (typeof window === 'undefined') return {};
		const raw = localStorage.getItem(STORAGE_KEY);
		if (!raw) return {};
		const parsed = JSON.parse(raw);
		return {
			auth: deserializeAuth(parsed.auth),
			env: deserializeEnv(parsed.env),
			preferences: deserializePreferences(parsed.preferences),
		};
	} catch {
		return {};
	}
}

function persistState(state: AppState): void {
	try {
		if (typeof window === 'undefined') return;
		const serialized = {
			auth: serializeAuth(state.auth),
			env: serializeEnv(state.env),
			preferences: serializePreferences(state.preferences),
		};
		localStorage.setItem(STORAGE_KEY, JSON.stringify(serialized));
	} catch {}
}

// ── Store singleton ────────────────────────────────────────────────────

type Listener = () => void;

const authLogger = createLogger({ scope: 'auth', includeTimestamp: false });

function createAppStore() {
	const persisted = loadPersistedState();
	let state: AppState = {
		auth: persisted.auth ?? { ...initialAuthState },
		env: persisted.env ?? createInitialEnvState(),
		preferences: persisted.preferences ?? { ...initialPreferencesState },
	};
	const listeners = new Set<Listener>();

	function getState(): AppState {
		return state;
	}

	function setState(next: Partial<AppState>) {
		state = { ...state, ...next };
		persistState(state);
		listeners.forEach((l) => l());
	}

	function subscribe(listener: Listener): () => void {
		listeners.add(listener);
		return () => listeners.delete(listener);
	}

	// ── Auth actions ─────────────────────────────────────────────────

	function setAuthenticated(user: UserProfile, token: ApiToken, rememberMe = false) {
		setState({
			auth: { isAuthenticated: true, isLoading: false, user, token, rememberMe },
		});
	}

	function setUnauthenticated() {
		const a = state.auth;
		if (!a.isAuthenticated && !a.isLoading) return;
		setState({
			auth: { isAuthenticated: false, isLoading: false, user: null, token: null, rememberMe: false },
		});
	}

	function setLoading(loading: boolean) {
		if (state.auth.isLoading === loading) return;
		setState({ auth: { ...state.auth, isLoading: loading } });
	}

	function updateToken(token: ApiToken) {
		setState({ auth: { ...state.auth, token } });
	}

	function clearToken() {
		setState({ auth: { ...state.auth, token: null, isAuthenticated: false } });
	}

	function updateUser(userUpdate: Partial<UserProfile>) {
		const current = state.auth.user;
		if (!current) return;
		setState({ auth: { ...state.auth, user: { ...current, ...userUpdate } } });
	}

	// ── Env actions ──────────────────────────────────────────────────

	function resetAuthForContext(ctx: SchemaContext, reason: string) {
		authLogger.info(`Resetting auth for ${ctx} due to ${reason}`);
		TokenManager.clearToken(ctx);
		try { queryClient.clear(); } catch {}
		setUnauthenticated();
		setLoading(false);
	}

	function setEndpointOverride(ctx: SchemaContext, url: string | null) {
		const value = url?.trim() || null;
		const current = state.env.endpointOverrides[ctx]?.trim() || null;
		if (current === value) return;
		setState({
			env: { ...state.env, endpointOverrides: { ...state.env.endpointOverrides, [ctx]: value } },
		});
		persistEndpointOverride(ctx, value);
		resetAuthForContext(ctx, 'endpoint override change');
	}

	function setEndpointOverrideFromSync(ctx: SchemaContext, url: string | null) {
		const value = url?.trim() || null;
		const current = state.env.endpointOverrides[ctx] ?? null;
		if (current === value) return;
		setState({
			env: { ...state.env, endpointOverrides: { ...state.env.endpointOverrides, [ctx]: value } },
		});
		resetAuthForContext(ctx, 'endpoint override sync');
	}

	function clearEndpointOverride(ctx: SchemaContext) {
		if ((state.env.endpointOverrides[ctx] ?? null) === null) return;
		setState({
			env: { ...state.env, endpointOverrides: { ...state.env.endpointOverrides, [ctx]: null } },
		});
		persistEndpointOverride(ctx, null);
		resetAuthForContext(ctx, 'endpoint override cleared');
	}

	function resetEndpointOverrides() {
		const previous = state.env.endpointOverrides;
		const empty = Object.fromEntries(schemaContexts.map((c) => [c, null])) as Record<SchemaContext, null>;
		setState({ env: { ...state.env, endpointOverrides: empty } });
		schemaContexts.forEach((ctx) => {
			persistEndpointOverride(ctx, null);
			if (previous[ctx] !== null) resetAuthForContext(ctx, 'endpoint overrides reset');
		});
	}

	function getEffectiveEndpoint(ctx: SchemaContext) {
		return getEffectiveEndpointHelper(state.env, ctx);
	}

	// ── Preferences actions ──────────────────────────────────────────

	function setSidebarSectionExpanded(section: 'app' | 'system', expanded: boolean) {
		setState({
			preferences: {
				...state.preferences,
				sidebarSectionsExpanded: { ...state.preferences.sidebarSectionsExpanded, [section]: expanded },
			},
		});
	}

	function toggleSidebarSection(section: 'app' | 'system') {
		setSidebarSectionExpanded(section, !state.preferences.sidebarSectionsExpanded[section]);
	}

	function resetSidebarSections() {
		setState({
			preferences: {
				...state.preferences,
				sidebarSectionsExpanded: { app: true, system: false },
			},
		});
	}

	function setSidebarPinned(pinned: boolean) {
		setState({ preferences: { ...state.preferences, sidebarPinned: pinned } });
	}

	function toggleSidebarPinned() {
		setSidebarPinned(!state.preferences.sidebarPinned);
	}

	return {
		getState,
		subscribe,
		// Auth
		setAuthenticated,
		setUnauthenticated,
		setLoading,
		updateToken,
		clearToken,
		updateUser,
		// Env
		setEndpointOverride,
		setEndpointOverrideFromSync,
		clearEndpointOverride,
		resetEndpointOverrides,
		getEffectiveEndpoint,
		// Preferences
		setSidebarSectionExpanded,
		toggleSidebarSection,
		resetSidebarSections,
		setSidebarPinned,
		toggleSidebarPinned,
	};
}

export const appStore = createAppStore();

// ── Selector hook (replaces zustand's useStore) ────────────────────────

function shallowEqual(a: unknown, b: unknown): boolean {
	if (Object.is(a, b)) return true;
	if (typeof a !== 'object' || typeof b !== 'object' || a === null || b === null) return false;
	const keysA = Object.keys(a as Record<string, unknown>);
	const keysB = Object.keys(b as Record<string, unknown>);
	if (keysA.length !== keysB.length) return false;
	for (const key of keysA) {
		if (!Object.is((a as any)[key], (b as any)[key])) return false;
	}
	return true;
}

function useSelector<T>(selector: (state: AppState) => T): T {
	const selectorRef = useRef(selector);
	const cachedRef = useRef<{ value: T } | null>(null);
	selectorRef.current = selector;

	const getSnapshot = useCallback(() => {
		const next = selectorRef.current(appStore.getState());
		if (cachedRef.current !== null && shallowEqual(cachedRef.current.value, next)) {
			return cachedRef.current.value;
		}
		cachedRef.current = { value: next };
		return next;
	}, []);

	return useSyncExternalStore(appStore.subscribe, getSnapshot, getSnapshot);
}

// ── Backward-compatible useAppStore ────────────────────────────────────
// Provides .getState() for non-React code (execute.ts, env-sync.ts)

interface AppStoreCompat {
	getState: () => AppState;
	(selector: (state: AppState) => any): any;
}

export const useAppStore: AppStoreCompat = Object.assign(
	function useAppStoreHook<T>(selector: (state: AppState) => T): T {
		return useSelector(selector);
	},
	{ getState: appStore.getState },
);

// ── Exported hooks ─────────────────────────────────────────────────────

export const useSchemaBuilderAuth = () =>
	useSelector((s) => s.auth);

export const useAuth = useSchemaBuilderAuth;

export const useAuthActions = () => ({
	setAuthenticated: appStore.setAuthenticated,
	setUnauthenticated: appStore.setUnauthenticated,
	setLoading: appStore.setLoading,
	updateToken: appStore.updateToken,
	clearToken: appStore.clearToken,
	updateUser: appStore.updateUser,
	isTokenExpired: () => isTokenExpired(appStore.getState().auth.token),
	getAuthHeader: () => getAuthHeader(appStore.getState().auth),
});

export const useEnv = () =>
	useSelector((s) => ({
		endpointOverrides: s.env.endpointOverrides,
		getEffectiveEndpoint: appStore.getEffectiveEndpoint,
	}));

export const useEnvActions = () => ({
	setEndpointOverride: appStore.setEndpointOverride,
	clearEndpointOverride: appStore.clearEndpointOverride,
	resetEndpointOverrides: appStore.resetEndpointOverrides,
});

export const useSidebarSections = () =>
	useSelector((s) => s.preferences.sidebarSectionsExpanded);

export const useSidebarSectionActions = () => ({
	setSidebarSectionExpanded: appStore.setSidebarSectionExpanded,
	toggleSidebarSection: appStore.toggleSidebarSection,
	resetSidebarSections: appStore.resetSidebarSections,
});

export const useSidebarPinned = () =>
	useSelector((s) => s.preferences.sidebarPinned);

export const useSidebarPinnedActions = () => ({
	setSidebarPinned: appStore.setSidebarPinned,
	toggleSidebarPinned: appStore.toggleSidebarPinned,
});
