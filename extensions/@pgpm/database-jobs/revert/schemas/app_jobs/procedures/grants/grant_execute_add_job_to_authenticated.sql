-- Revert schemas/app_jobs/procedures/grants/grant_execute_add_job_to_authenticated from pg

BEGIN;

REVOKE EXECUTE ON FUNCTION app_jobs.add_job(text, json, text, text, timestamptz, integer, integer, uuid, uuid, text, uuid, text) FROM authenticated;

COMMIT;
