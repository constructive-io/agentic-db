-- Deploy schemas/app_jobs/tables/jobs/triggers/notify_worker to pg
-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/jobs/table
-- requires: schemas/app_jobs/procedures/do_notify
-- requires: schemas/app_jobs/tables/jobs/triggers/increase_job_queue_count

BEGIN;
CREATE FUNCTION app_jobs.tg_jobs__after_insert ()
  RETURNS TRIGGER
  AS $$
BEGIN
  PERFORM
    pg_notify('jobs:insert', '');
  RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER _900_after_insert
  AFTER INSERT ON app_jobs.jobs
  FOR EACH STATEMENT
  EXECUTE PROCEDURE app_jobs.tg_jobs__after_insert ();
COMMIT;
