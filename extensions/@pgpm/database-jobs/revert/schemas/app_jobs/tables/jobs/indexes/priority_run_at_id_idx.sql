-- Revert schemas/app_jobs/tables/jobs/indexes/priority_run_at_id_idx from pg

BEGIN;

DROP INDEX IF EXISTS app_jobs.priority_run_at_id_idx;
DROP INDEX IF EXISTS app_jobs.jobs_main_index;
DROP INDEX IF EXISTS app_jobs.jobs_no_queue_index;

COMMIT;
