-- Revert schemas/app_jobs/procedures/schedule_min_interval_seconds from pg

BEGIN;

DROP FUNCTION app_jobs.schedule_min_interval_seconds;

COMMIT;
