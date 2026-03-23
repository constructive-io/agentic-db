/**
 * Test helpers for agentic-db integration tests.
 *
 * Modeled after constructive-db/application/app/test-utils/helpers.ts
 * but adapted for the agentic-db schema (agentic_db_* prefix).
 *
 * Raw SQL here is limited to:
 *   - app membership defaults (bootstrap config)
 *   - app_jobs stub (test infrastructure)
 * Everything else should use the ORM via @agentic-db/sdk.
 */

/**
 * Set app_membership_defaults to enable users to be active by default.
 * Uses pg (superuser) to bypass RLS.
 *
 * The default fixture seeds is_verified=FALSE and is_approved=FALSE,
 * which means sign_up produces an inactive app membership, the SPRT
 * is never populated, and entity_membership RLS blocks all writes.
 *
 * Tests that need users to be immediately active should call this
 * with is_verified=TRUE and is_approved=TRUE before any sign_up call.
 */
export async function setAppMembershipDefaults(
  pg: any,
  options: { is_verified: boolean; is_approved: boolean },
): Promise<void> {
  await pg.query(
    `UPDATE "agentic_db_memberships_public".app_membership_defaults
     SET is_verified = $1, is_approved = $2`,
    [options.is_verified, options.is_approved],
  );
}

/**
 * Create a no-op stub for app_jobs.add_job().
 *
 * Several tables (contacts, notes, etc.) have AFTER INSERT triggers that
 * call app_jobs.add_job() to enqueue background embedding/chunking jobs.
 * In the test DB the jobs module isn't deployed, so we create a no-op stub
 * and grant the authenticated role access to the schema + function.
 */
export async function createAppJobsStub(pg: any): Promise<void> {
  await pg.query(`
    CREATE OR REPLACE FUNCTION app_jobs.add_job(
      _database_id uuid, _task text, _payload jsonb
    ) RETURNS void AS $$ BEGIN END; $$ LANGUAGE plpgsql;
    GRANT USAGE ON SCHEMA app_jobs TO authenticated;
    GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA app_jobs TO authenticated;
  `);
}
