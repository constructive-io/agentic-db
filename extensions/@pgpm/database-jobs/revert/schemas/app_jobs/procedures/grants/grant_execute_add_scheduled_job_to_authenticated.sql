-- Revert schemas/app_jobs/procedures/grants/grant_execute_add_scheduled_job_to_authenticated from pg

BEGIN;

REVOKE EXECUTE ON FUNCTION app_jobs.add_scheduled_job(text, json, json, text, text, integer, integer, uuid, uuid) FROM authenticated;

COMMIT;
