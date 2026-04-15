/**
 * helpers.ts — Shared utilities for Agent OS provisioning
 */

import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';

/**
 * Retry helper for transient failures during provisioning.
 * Immediately rethrows "already exists" errors (idempotency).
 */
export async function withRetry<T>(
  fn: () => Promise<T>,
  maxRetries = 5,
  delayMs = 2000
): Promise<T> {
  for (let attempt = 1; attempt <= maxRetries; attempt++) {
    try {
      return await fn();
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) throw err;
      if (attempt === maxRetries) throw err;
      console.log(
        `   ⏳ Attempt ${attempt}/${maxRetries} failed: ${msg.slice(0, 120)}. Retrying in ${delayMs}ms...`
      );
      await new Promise((r) => setTimeout(r, delayMs));
    }
  }
  throw new Error('unreachable');
}

/**
 * Standard grants for org-scoped tables (full CRUD for authenticated users)
 */
export const entityGrants: [string, string][] = [
  ['select', '*'],
  ['insert', '*'],
  ['update', '*'],
  ['delete', '*'],
];

/**
 * Read-only grants (for lookup/shared tables)
 */
export const readOnlyGrants: [string, string][] = [
  ['select', '*'],
];

/**
 * Create a platform API client using @constructive-io/node.
 * Points at api.localhost (the schema builder endpoint).
 */
// eslint-disable-next-line @typescript-eslint/explicit-module-boundary-types
export function createPlatformClient(): ReturnType<typeof public_.createClient> {
  const token = config.accessToken;
  if (!token) throw new Error('ACCESS_TOKEN is required');

  const headers: Record<string, string> = {
    Authorization: `Bearer ${token}`,
    'X-Meta-Schema': 'true',
  };
  if (config.databaseId) {
    headers['X-Database-Id'] = config.databaseId;
  }
  const adapter = new NodeHttpAdapter(config.apiEndpoint, headers);
  return public_.createClient({ adapter });
}

/**
 * Get the database ID from config, throwing if missing.
 */
export function requireDatabaseId(): string {
  const id = config.databaseId;
  if (!id) {
    console.error('❌ Missing DATABASE_ID. Run create-db first.');
    process.exit(1);
  }
  return id;
}

// Re-export the client type for convenience
export type PlatformClient = ReturnType<typeof createPlatformClient>;
