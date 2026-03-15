-- Deploy schemas/app_jobs/tables/jobs/table to pg
-- requires: schemas/app_jobs/schema

BEGIN;
CREATE TABLE app_jobs.jobs (
  id bigserial PRIMARY KEY,
  database_id uuid NOT NULL,
  queue_name text DEFAULT (public.gen_random_uuid ()) ::text,
  task_identifier text NOT NULL,
  payload json DEFAULT '{}' ::json NOT NULL,
  priority integer DEFAULT 0 NOT NULL,
  run_at timestamptz DEFAULT now() NOT NULL,
  attempts integer DEFAULT 0 NOT NULL,
  max_attempts integer DEFAULT 25 NOT NULL,
  key text,
  last_error text,
  locked_at timestamptz,
  locked_by text,
  CHECK (length(key) < 513),
  CHECK (length(task_identifier) < 127),
  CHECK (max_attempts > 0),
  CHECK (length(queue_name) < 127),
  CHECK (length(locked_by) > 3),
  UNIQUE (key)
);

COMMENT ON TABLE app_jobs.jobs IS 'Background job queue with database scoping: each row is a pending or in-progress task for a specific database';
COMMENT ON COLUMN app_jobs.jobs.id IS 'Auto-incrementing job identifier';
COMMENT ON COLUMN app_jobs.jobs.database_id IS 'Database this job belongs to, for multi-tenant job isolation';
COMMENT ON COLUMN app_jobs.jobs.queue_name IS 'Name of the queue this job belongs to; used for worker routing and concurrency control';
COMMENT ON COLUMN app_jobs.jobs.task_identifier IS 'Identifier for the task type (maps to a worker handler function)';
COMMENT ON COLUMN app_jobs.jobs.payload IS 'JSON payload of arguments passed to the task handler';
COMMENT ON COLUMN app_jobs.jobs.priority IS 'Execution priority; lower numbers run first (default 0)';
COMMENT ON COLUMN app_jobs.jobs.run_at IS 'Earliest time this job should be executed; used for delayed/scheduled execution';
COMMENT ON COLUMN app_jobs.jobs.attempts IS 'Number of times this job has been attempted so far';
COMMENT ON COLUMN app_jobs.jobs.max_attempts IS 'Maximum retry attempts before the job is considered permanently failed';
COMMENT ON COLUMN app_jobs.jobs.key IS 'Optional unique deduplication key; prevents duplicate jobs with the same key';
COMMENT ON COLUMN app_jobs.jobs.last_error IS 'Error message from the most recent failed attempt';
COMMENT ON COLUMN app_jobs.jobs.locked_at IS 'Timestamp when a worker locked this job for processing';
COMMENT ON COLUMN app_jobs.jobs.locked_by IS 'Identifier of the worker that currently holds the lock';

COMMIT;

