-- Deploy schemas/app_jobs/tables/jobs/indexes/priority_run_at_id_idx to pg
-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/jobs/table

BEGIN;

CREATE INDEX jobs_main_index
  ON app_jobs.jobs USING btree (priority, run_at)
  INCLUDE (id, queue_name)
  WHERE (is_available = true);

CREATE INDEX jobs_no_queue_index
  ON app_jobs.jobs USING btree (priority, run_at)
  INCLUDE (id)
  WHERE (is_available = true AND queue_name IS NULL);

COMMIT;
