import { createLogger } from '@/lib/logger';

import {
	BUILD_TIME_ENV_VALUES,
	RUNTIME_CONFIG_KEYS,
	type RuntimeConfig,
	type RuntimeConfigKey,
} from './runtime-config.types';

const logger = createLogger({ scope: 'config' });

/**
 * Get build-time environment value for a config key.
 *
 * Uses BUILD_TIME_ENV_VALUES which contains explicit process.env.NEXT_PUBLIC_*
 * references that Next.js can statically replace at build time.
 */
function getBuildTimeEnvValue(key: RuntimeConfigKey): string | undefined {
	return BUILD_TIME_ENV_VALUES[key];
}

/**
 * Get a runtime configuration value with the following priority:
 * 1. Docker runtime injection (window.__RUNTIME_CONFIG__)
 * 2. Build-time environment variable (process.env.NEXT_PUBLIC_*)
 * 3. Provided default value
 *
 * Note: UI overrides (env-slice) are handled at a higher level
 * by the getEffectiveEndpoint() function in the store.
 *
 * If window.__RUNTIME_CONFIG__ fails to load, silently falls back
 * to build-time values - no errors or warnings.
 */
export function getRuntimeConfig(key: RuntimeConfigKey, defaultValue?: string): string | undefined {
	// Client-side: check window.__RUNTIME_CONFIG__ first (Docker runtime injection)
	if (typeof window !== 'undefined') {
		const runtimeValue = window.__RUNTIME_CONFIG__?.[key];
		if (runtimeValue !== undefined && runtimeValue !== '') {
			logger.debug(`getRuntimeConfig: "${key}" resolved from window.__RUNTIME_CONFIG__`, {
				key,
				value: runtimeValue,
				source: 'docker-runtime',
			});
			return runtimeValue;
		}
	}

	// Use build-time env values (captured at module load with explicit process.env references)
	const envValue = getBuildTimeEnvValue(key);
	if (envValue !== undefined && envValue !== '') {
		logger.debug(`getRuntimeConfig: "${key}" resolved from process.env`, {
			key,
			value: envValue,
			source: 'build-time',
		});
		return envValue;
	}

	logger.debug(`getRuntimeConfig: "${key}" using default`, {
		key,
		value: defaultValue,
		source: 'default',
	});
	return defaultValue;
}

/**
 * Parse a boolean-like value from environment variable.
 * Handles common formats: 'true', 'false', '1', '0', 'yes', 'no', 'on', 'off'
 */
export function parseEnvBoolean(value: string | undefined, defaultValue: boolean = false): boolean {
	if (value === undefined || value === '') return defaultValue;
	const normalized = value.trim().toLowerCase();
	if (['true', '1', 'yes', 'on'].includes(normalized)) return true;
	if (['false', '0', 'no', 'off'].includes(normalized)) return false;
	return defaultValue;
}

/**
 * Get all runtime configuration values merged with process.env defaults.
 * Useful for debugging and displaying current configuration.
 */
export function getAllRuntimeConfig(): Partial<RuntimeConfig> {
	const config: Partial<RuntimeConfig> = {};

	for (const key of RUNTIME_CONFIG_KEYS) {
		const value = getRuntimeConfig(key);
		if (value !== undefined) {
			config[key] = value;
		}
	}

	return config;
}

/**
 * Debug helper: Dump the complete config state to console.
 * Shows all three layers: docker runtime, build-time env, and resolved values.
 *
 * Usage: Call from browser console: window.__dumpConfigState?.() or import and call directly.
 */
export function dumpConfigState(): void {
	const timestamp = new Date().toISOString();
	console.group(`[constructive][config] Configuration State Dump - ${timestamp}`);

	// Check if we're on client side
	const isClient = typeof window !== 'undefined';
	console.log('Environment:', isClient ? 'client' : 'server');

	if (isClient) {
		// Docker runtime config
		console.group('1. Docker Runtime (window.__RUNTIME_CONFIG__)');
		const runtimeConfig = window.__RUNTIME_CONFIG__;
		if (runtimeConfig && Object.keys(runtimeConfig).length > 0) {
			console.table(runtimeConfig);
		} else {
			console.log('(empty or not loaded)');
		}
		console.groupEnd();
	}

	// Build-time env vars
	console.group('2. Build-time Environment (process.env.NEXT_PUBLIC_*)');
	const buildTimeVars: Record<string, string> = {};
	for (const key of RUNTIME_CONFIG_KEYS) {
		const value = getBuildTimeEnvValue(key);
		if (value !== undefined && value !== '') {
			buildTimeVars[key] = value;
		}
	}
	if (Object.keys(buildTimeVars).length > 0) {
		console.table(buildTimeVars);
	} else {
		console.log('(no build-time variables set)');
	}
	console.groupEnd();

	// Final resolved values
	console.group('3. Resolved Values (getRuntimeConfig)');
	const resolvedConfig: Record<string, { value: string; source: string }> = {};
	for (const key of RUNTIME_CONFIG_KEYS) {
		// Determine source
		let source = 'default';
		let value: string | undefined;

		if (isClient) {
			const runtimeValue = window.__RUNTIME_CONFIG__?.[key];
			if (runtimeValue !== undefined && runtimeValue !== '') {
				source = 'docker-runtime';
				value = runtimeValue;
			}
		}

		if (!value) {
			const envValue = getBuildTimeEnvValue(key);
			if (envValue !== undefined && envValue !== '') {
				source = 'build-time';
				value = envValue;
			}
		}

		if (value) {
			resolvedConfig[key] = { value, source };
		}
	}
	if (Object.keys(resolvedConfig).length > 0) {
		console.table(resolvedConfig);
	} else {
		console.log('(no configuration values set)');
	}
	console.groupEnd();

	console.groupEnd();
}

/**
 * Enable config debug logging.
 * Usage: Call from browser console: window.__enableConfigDebug?.()
 */
export function enableConfigDebug(): void {
	if (typeof window === 'undefined') return;
	try {
		localStorage.setItem('CONSTRUCTIVE_DEBUG_CONFIG', 'true');
		console.log('[constructive][config] Debug logging ENABLED. Refresh the page for full effect.');
		console.log('[constructive][config] To disable: window.__disableConfigDebug()');
	} catch (e) {
		console.error('[constructive][config] Failed to enable debug:', e);
	}
}

/**
 * Disable config debug logging.
 * Usage: Call from browser console: window.__disableConfigDebug?.()
 */
export function disableConfigDebug(): void {
	if (typeof window === 'undefined') return;
	try {
		localStorage.removeItem('CONSTRUCTIVE_DEBUG_CONFIG');
		console.log('[constructive][config] Debug logging DISABLED.');
	} catch (e) {
		console.error('[constructive][config] Failed to disable debug:', e);
	}
}

// Attach to window for easy console access
if (typeof window !== 'undefined') {
	(window as any).__dumpConfigState = dumpConfigState;
	(window as any).__enableConfigDebug = enableConfigDebug;
	(window as any).__disableConfigDebug = disableConfigDebug;
}
