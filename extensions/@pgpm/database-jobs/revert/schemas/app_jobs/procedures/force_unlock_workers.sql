-- Revert schemas/app_jobs/procedures/force_unlock_workers from pg

BEGIN;

DROP FUNCTION app_jobs.force_unlock_workers;

COMMIT;
