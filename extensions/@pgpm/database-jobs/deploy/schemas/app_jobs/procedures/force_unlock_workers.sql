-- Deploy schemas/app_jobs/procedures/force_unlock_workers to pg
-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/jobs/table
-- requires: schemas/app_jobs/tables/job_queues/table

BEGIN;
CREATE FUNCTION app_jobs.force_unlock_workers (worker_ids text[])
  RETURNS void
  LANGUAGE sql
  VOLATILE
  AS $$
  UPDATE app_jobs.jobs
  SET locked_at = NULL, locked_by = NULL
  WHERE locked_by = ANY (worker_ids);

  UPDATE app_jobs.job_queues
  SET locked_at = NULL, locked_by = NULL
  WHERE locked_by = ANY (worker_ids);
$$;
COMMIT;
