/**
 * helpers.ts — Shared utilities for Agent OS provisioning
 */

import { api, modules } from '@constructive-io/sdk';
import { NodeHttpAdapter } from '@constructive-io/node';
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
 * Create a platform API client using @constructive-io/node.
 * Points at api.localhost (the schema builder endpoint).
 */
// eslint-disable-next-line @typescript-eslint/explicit-module-boundary-types
export function createPlatformClient(): ReturnType<typeof api.createClient> {
  const adapter = new NodeHttpAdapter(config.apiEndpoint, platformHeaders());
  return api.createClient({ adapter });
}

/**
 * Create a modules API client (blueprints, module provisioning).
 * Points at modules.localhost — the metaschema_modules_public endpoint.
 */
// eslint-disable-next-line @typescript-eslint/explicit-module-boundary-types
export function createModulesClient(): ReturnType<typeof modules.createClient> {
  const adapter = new NodeHttpAdapter(config.modulesEndpoint, platformHeaders());
  return modules.createClient({ adapter });
}

function platformHeaders(): Record<string, string> {
  const token = config.accessToken;
  if (!token) throw new Error('ACCESS_TOKEN is required');

  const headers: Record<string, string> = {
    Authorization: `Bearer ${token}`,
    'X-Meta-Schema': 'true',
  };
  if (config.databaseId) {
    headers['X-Database-Id'] = config.databaseId;
  }
  return headers;
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
