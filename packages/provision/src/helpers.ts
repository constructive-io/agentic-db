/**
 * Retry helper for transient failures during provisioning
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
      if (attempt === maxRetries) throw err;
      console.log(`   ⏳ Attempt ${attempt}/${maxRetries} failed: ${msg.slice(0, 120)}. Retrying in ${delayMs}ms...`);
      await new Promise((r) => setTimeout(r, delayMs));
    }
  }
  throw new Error('unreachable');
}

/**
 * Standard grants for org-scoped tables
 */
export const entityGrants = [
  ['select', '*'],
  ['insert', '*'],
  ['update', '*'],
  ['delete', '*'],
] as unknown as Record<string, unknown>;

/**
 * Standard policy data for org-scoped tables
 */
export const entityPolicyData = {
  entity_field: 'entity_id',
  membership_type: 2, // Org
} as unknown as Record<string, unknown>;

/**
 * Read-only grants (for lookup tables)
 */
export const readOnlyGrants = [
  ['select', '*'],
] as unknown as Record<string, unknown>;
