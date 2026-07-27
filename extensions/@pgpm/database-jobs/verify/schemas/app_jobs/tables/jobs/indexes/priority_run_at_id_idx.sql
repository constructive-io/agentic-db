-- Verify schemas/app_jobs/tables/jobs/indexes/priority_run_at_id_idx  on pg

BEGIN;

SELECT verify_index ('app_jobs.jobs', 'jobs_main_index');
SELECT verify_index ('app_jobs.jobs', 'jobs_no_queue_index');

ROLLBACK;
