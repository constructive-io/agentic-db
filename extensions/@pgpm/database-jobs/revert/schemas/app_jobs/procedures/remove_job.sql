-- Revert schemas/app_jobs/procedures/remove_job from pg

BEGIN;

DROP FUNCTION app_jobs.remove_job;

COMMIT;
