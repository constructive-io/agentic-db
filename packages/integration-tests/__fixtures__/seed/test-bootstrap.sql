-- Test-only bootstrap that runs AFTER seed.pgpm() deploys the real schema.
--
-- The agentic-db schema ships INSERT triggers (e.g. contacts_enqueue_embedding)
-- that enqueue jobs via:
--   app_jobs.add_job(jwt_private.current_database_id(), ...)
-- In a real deployment jwt_private.current_database_id() reads the row from
-- pgpm-database-jobs' database registry. In tests we don't register the
-- ephemeral test db, so the function returns NULL and the enqueue INSERT
-- fails on app_jobs.jobs.database_id NOT NULL.
--
-- Override it with a stable dummy UUID so triggers can write to app_jobs
-- cleanly. This matches the workaround used in cli-e2e.test.ts.
CREATE OR REPLACE FUNCTION jwt_private.current_database_id()
RETURNS uuid AS $$
BEGIN
  RETURN '00000000-0000-0000-0000-000000000000'::uuid;
END;
$$ LANGUAGE plpgsql;
