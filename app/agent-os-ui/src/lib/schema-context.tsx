'use client';

import type { SchemaContext } from '@/app-config';

// Client helper: no-op since there's only one context (schema-builder)
export function SchemaContextClient() {
	return null;
}

// Server helper: always returns 'schema-builder'
export function pickSchemaContext(_pathname: string): SchemaContext {
	return 'schema-builder';
}
