-- Deploy schemas/app_jobs/procedures/remove_job to pg
-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/jobs/table

BEGIN;
CREATE FUNCTION app_jobs.remove_job (job_key text)
  RETURNS app_jobs.jobs
  LANGUAGE plpgsql
  STRICT
  AS $$
DECLARE
  v_job app_jobs.jobs;
BEGIN
  DELETE FROM app_jobs.jobs
  WHERE key = job_key
    AND (locked_at IS NULL
      OR locked_at < NOW() - interval '4 hours')
  RETURNING * INTO v_job;

  IF NOT (v_job IS NULL) THEN
    RETURN v_job;
  END IF;

  UPDATE app_jobs.jobs
  SET
    key = NULL,
    attempts = jobs.max_attempts
  WHERE key = job_key
  RETURNING * INTO v_job;

  RETURN v_job;
END;
$$;
COMMIT;
