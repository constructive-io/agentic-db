-- Deploy schemas/app_jobs/procedures/grants/grant_execute_add_job_to_authenticated to pg

-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/procedures/add_job

BEGIN;

GRANT EXECUTE ON FUNCTION app_jobs.add_job(text, json, text, text, timestamptz, integer, integer, uuid, uuid, text, uuid, text) TO authenticated;

COMMIT;
