-- Verify schemas/app_jobs/procedures/schedule_min_interval_seconds  on pg

BEGIN;

SELECT verify_function ('app_jobs.schedule_min_interval_seconds');

ROLLBACK;
