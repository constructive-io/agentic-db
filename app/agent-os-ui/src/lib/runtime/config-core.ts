import { createLogger } from '@/lib/logger';

import { getRuntimeConfig } from './get-runtime-config';

export type SchemaContext = 'schema-builder';

export const schemaContexts: readonly SchemaContext[] = ['schema-builder'];

const logger = createLogger({ scope: 'config-core' });

// Hardcoded fallback default for schema-builder (used when no env vars are set)
const DEFAULT_SCHEMA_BUILDER_ENDPOINT = 'http://api.localhost:3000/graphql';

/**
 * Get the schema builder endpoint dynamically.
 * Priority: window.__RUNTIME_CONFIG__ (Docker) > process.env (build-time) > hardcoded default
 */
export function getSchemaBuilderEndpoint(): string {
	const runtimeValue = getRuntimeConfig('NEXT_PUBLIC_SCHEMA_BUILDER_GRAPHQL_ENDPOINT');
	const endpoint = runtimeValue || DEFAULT_SCHEMA_BUILDER_ENDPOINT;

	logger.debug('getSchemaBuilderEndpoint called', {
		runtimeValue,
		fallbackDefault: DEFAULT_SCHEMA_BUILDER_ENDPOINT,
		resolved: endpoint,
		usedFallback: !runtimeValue,
	});

	return endpoint;
}

// Legacy constant for backwards compatibility (evaluated at module load time)
// WARNING: This is evaluated once at module load. For dynamic resolution, use getSchemaBuilderEndpoint()
// In development, restart the server after changing .env.local for this to update
export const schemaBuilderGraphqlEndpoint = getSchemaBuilderEndpoint();

// Log the initial endpoint resolution for debugging
if (typeof window !== 'undefined' && process.env.NODE_ENV === 'development') {
	logger.debug('Module loaded', { schemaBuilderGraphqlEndpoint });
}

/**
 * Get the default endpoint for a given context dynamically.
 * Returns the configured schema builder endpoint.
 */
export function getDefaultEndpoint(_ctx?: SchemaContext): string | null {
	const endpoint = getSchemaBuilderEndpoint();
	logger.debug('getDefaultEndpoint called', { endpoint });
	return endpoint;
}

/**
 * Default endpoints map.
 */
export const appEndpoints: Record<SchemaContext, string | null> = {
	'schema-builder': schemaBuilderGraphqlEndpoint,
} as const;

export function setSchemaContext(_ctx: SchemaContext | null) {
	// No-op: only one context exists
}

export function getSchemaContext(): SchemaContext {
	return 'schema-builder';
}
