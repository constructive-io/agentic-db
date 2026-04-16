/**
 * Test helpers for agentic-db integration tests.
 *
 * Raw SQL here is limited to:
 *   - app_jobs stub (test infrastructure)
 *   - grant helpers for anonymous access
 * Everything else should use the ORM via @agentic-db/sdk.
 */

/**
 * Stub the job infrastructure so INSERT triggers don't fail.
 *
 * Several tables (contacts, notes, etc.) have AFTER INSERT triggers that
 * call app_jobs.add_job(jwt_private.current_database_id(), ...).
 * Without a JWT context current_database_id() returns NULL, which violates
 * the NOT NULL constraint on app_jobs.jobs.database_id.
 *
 * We fix this by:
 *   1. Overriding jwt_private.current_database_id() to return a dummy UUID
 *   2. Granting the anonymous role access to the app_jobs schema so the
 *      trigger functions can execute successfully.
 */
export async function createAppJobsStub(pg: any): Promise<void> {
  await pg.query(`
    CREATE OR REPLACE FUNCTION jwt_private.current_database_id()
    RETURNS uuid AS $$
    BEGIN
      RETURN '00000000-0000-0000-0000-000000000000'::uuid;
    END;
    $$ LANGUAGE plpgsql;

    GRANT USAGE ON SCHEMA app_jobs TO anonymous;
    GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA app_jobs TO anonymous;
    GRANT ALL ON ALL TABLES IN SCHEMA app_jobs TO anonymous;
    GRANT ALL ON ALL SEQUENCES IN SCHEMA app_jobs TO anonymous;
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
