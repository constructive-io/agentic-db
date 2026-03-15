-- Deploy schemas/app_jobs/tables/job_queues/table to pg
-- requires: schemas/app_jobs/schema

BEGIN;
CREATE TABLE app_jobs.job_queues (
  queue_name text NOT NULL PRIMARY KEY,
  job_count int DEFAULT 0 NOT NULL,
  locked_at timestamptz,
  locked_by text
);

COMMENT ON TABLE app_jobs.job_queues IS 'Queue metadata: tracks job counts and locking state for each named queue';
COMMENT ON COLUMN app_jobs.job_queues.queue_name IS 'Unique name identifying this queue';
COMMENT ON COLUMN app_jobs.job_queues.job_count IS 'Number of pending jobs in this queue';
COMMENT ON COLUMN app_jobs.job_queues.locked_at IS 'Timestamp when this queue was locked for batch processing';
COMMENT ON COLUMN app_jobs.job_queues.locked_by IS 'Identifier of the worker that currently holds the queue lock';

COMMIT;

