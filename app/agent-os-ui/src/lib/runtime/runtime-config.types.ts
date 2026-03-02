/**
 * Single source of truth for runtime configuration keys.
 * The interface is derived from this array to ensure type safety.
 *
 * Priority chain:
 * 1. UI Override (env-slice.ts + localStorage) - highest
 * 2. Docker Runtime (window.__RUNTIME_CONFIG__)
 * 3. Build-time Default (process.env.NEXT_PUBLIC_*) - lowest
 *
 * IMPORTANT: When adding new keys here, you MUST also:
 * 1. Add the key to BUILD_TIME_ENV_VALUES below (for Next.js static replacement)
 * 2. Update docker-entrypoint.sh to include the new key
 */
export const RUNTIME_CONFIG_KEYS = [
	// GraphQL Endpoints
	'NEXT_PUBLIC_SCHEMA_BUILDER_GRAPHQL_ENDPOINT',
] as const;

/** Type representing any valid runtime config key */
export type RuntimeConfigKey = (typeof RUNTIME_CONFIG_KEYS)[number];

/** Runtime configuration interface - derived from RUNTIME_CONFIG_KEYS for type safety */
export type RuntimeConfig = {
	[K in RuntimeConfigKey]?: string;
};

/**
 * Build-time environment values - captured at module evaluation time.
 *
 * CRITICAL: Next.js statically replaces process.env.NEXT_PUBLIC_* at build time.
 * Dynamic access like `process.env[key]` does NOT work on the client side.
 * Each key MUST be explicitly referenced for Next.js to inline the value.
 *
 * This object is evaluated ONCE when the module loads (during build for SSR).
 * The values are "baked in" to the JavaScript bundle.
 *
 * For runtime configuration (Docker), use window.__RUNTIME_CONFIG__ instead.
 */
export const BUILD_TIME_ENV_VALUES: Record<RuntimeConfigKey, string | undefined> = {
	NEXT_PUBLIC_SCHEMA_BUILDER_GRAPHQL_ENDPOINT: process.env.NEXT_PUBLIC_SCHEMA_BUILDER_GRAPHQL_ENDPOINT,
};

/**
 * Type-level check to ensure BUILD_TIME_ENV_VALUES has all keys from RUNTIME_CONFIG_KEYS.
 * This will cause a TypeScript error if a key is added to RUNTIME_CONFIG_KEYS but not BUILD_TIME_ENV_VALUES.
 */
type _EnsureAllKeysPresent = {
	[K in RuntimeConfigKey]: (typeof BUILD_TIME_ENV_VALUES)[K];
};

/**
 * Runtime validation (development only) - logs a warning if keys are out of sync.
 * This catches issues that might slip through if TypeScript checking is bypassed.
 */
if (process.env.NODE_ENV === 'development') {
	const buildTimeKeys = Object.keys(BUILD_TIME_ENV_VALUES) as string[];
	const configKeys = RUNTIME_CONFIG_KEYS as readonly string[];

	const missingInBuildTime = configKeys.filter((k) => !buildTimeKeys.includes(k));
	const extraInBuildTime = buildTimeKeys.filter((k) => !configKeys.includes(k));

	if (missingInBuildTime.length > 0) {
		console.error(
			'[constructive][config] CRITICAL: Keys in RUNTIME_CONFIG_KEYS missing from BUILD_TIME_ENV_VALUES:',
			missingInBuildTime,
			'\nThese env vars will NOT work in production builds!',
		);
	}
	if (extraInBuildTime.length > 0) {
		console.warn('[constructive][config] Extra keys in BUILD_TIME_ENV_VALUES not in RUNTIME_CONFIG_KEYS:', extraInBuildTime);
	}
}

// Extend Window interface for TypeScript
declare global {
	interface Window {
		__RUNTIME_CONFIG__?: RuntimeConfig;
	}
}
