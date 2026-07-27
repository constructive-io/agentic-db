-- Deploy schemas/app_jobs/procedures/grants/grant_execute_add_scheduled_job_to_authenticated to pg

-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/procedures/add_scheduled_job

BEGIN;

GRANT EXECUTE ON FUNCTION app_jobs.add_scheduled_job(text, json, json, text, text, integer, integer, uuid, uuid) TO authenticated;

COMMIT;
