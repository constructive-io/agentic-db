/**
 * Test helpers for agentic-db integration tests.
 *
 * Raw SQL here is limited to:
 *   - app_jobs stub (test infrastructure)
 *   - grant helpers for anonymous access
 * Everything else should use the ORM via @agentic-db/sdk.
 */

/**
 * Create a no-op stub for app_jobs.add_job().
 *
 * Several tables (contacts, notes, etc.) have AFTER INSERT triggers that
 * call app_jobs.add_job() to enqueue background embedding/chunking jobs.
 * In the test DB the jobs module isn't deployed, so we create a no-op stub
 * and grant roles access to the schema + function.
 */
export async function createAppJobsStub(pg: any): Promise<void> {
  await pg.query(`
    CREATE OR REPLACE FUNCTION app_jobs.add_job(
      _database_id uuid, _task text, _payload jsonb
    ) RETURNS void AS $$ BEGIN END; $$ LANGUAGE plpgsql;
    GRANT USAGE ON SCHEMA app_jobs TO anonymous;
    GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA app_jobs TO anonymous;
  `);
}

/**
 * Grant the anonymous role full access to app tables.
 *
 * Since security modules are not installed, tests run as anonymous
 * and need direct access to app schemas.
 */
export async function grantAnonymousAccess(pg: any): Promise<void> {
  await pg.query(`
    GRANT USAGE ON SCHEMA agentic_db_app_public TO anonymous;
    GRANT ALL ON ALL TABLES IN SCHEMA agentic_db_app_public TO anonymous;
    GRANT ALL ON ALL SEQUENCES IN SCHEMA agentic_db_app_public TO anonymous;
  `);
}
