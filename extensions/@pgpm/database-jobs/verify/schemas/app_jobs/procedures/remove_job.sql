-- Verify schemas/app_jobs/procedures/remove_job  on pg

BEGIN;

SELECT verify_function ('app_jobs.remove_job');

ROLLBACK;
