import {
	appEndpoints,
	getDefaultEndpoint,
	getSchemaContext as coreGetCtx,
	setSchemaContext as coreSetCtx,
	type SchemaContext,
} from '@/lib/runtime/config-core';
import { createLogger } from '@/lib/logger';
import { useAppStore } from '@/store/app-store';
import type { AppState } from '@/store/app-store';

export type { SchemaContext } from '@/lib/runtime/config-core';

export const setSchemaContext = coreSetCtx;
export const getSchemaContext = coreGetCtx;

const logger = createLogger({ scope: 'app-config' });

/**
 * Get the effective GraphQL endpoint for a context.
 *
 * Priority chain:
 * 1. UI override (from store/localStorage)
 * 2. Dynamic default (getDefaultEndpoint - reads from runtime config or env)
 * 3. Static fallback (appEndpoints - evaluated at module load)
 */
export function getEndpoint(ctx: SchemaContext = getSchemaContext()): string | null {
	let endpoint: string | null = null;
	let source = 'none';

	// 1. Check UI override (store)
	try {
		const state: AppState = useAppStore.getState();
		const o = state.env.endpointOverrides?.[ctx];
		if (o && o.trim().length) {
			endpoint = o.trim();
			source = 'ui-override';
		}
	} catch (e) {
		logger.debug('getEndpoint: Error accessing store', { error: String(e) });
	}

	// 2. Use dynamic getter (reads from window.__RUNTIME_CONFIG__ or process.env)
	if (!endpoint) {
		endpoint = getDefaultEndpoint(ctx);
		if (endpoint) {
			source = 'getDefaultEndpoint';
		}
	}

	// 3. Fallback to static appEndpoints (for backwards compat)
	if (!endpoint) {
		endpoint = appEndpoints[ctx];
		if (endpoint) {
			source = 'appEndpoints-fallback';
		}
	}

	logger.debug('getEndpoint called', {
		context: ctx,
		endpoint,
		source,
		appEndpointsValue: appEndpoints[ctx],
	});

	return endpoint;
}

export const homePathByContext: Record<SchemaContext, string> = {
	'schema-builder': '/',
} as const;

export function getHomePath(ctx: SchemaContext = getSchemaContext()): string {
	return homePathByContext[ctx];
}

// Backward-compatible appConfig container
export const appConfig = {
	endpoints: appEndpoints,
} as const;
