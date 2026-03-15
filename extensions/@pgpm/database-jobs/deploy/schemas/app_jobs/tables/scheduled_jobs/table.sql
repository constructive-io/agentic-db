-- Deploy schemas/app_jobs/tables/scheduled_jobs/table to pg
-- requires: schemas/app_jobs/schema

BEGIN;
CREATE TABLE app_jobs.scheduled_jobs (
  id bigserial PRIMARY KEY,
  database_id uuid NOT NULL,
  queue_name text DEFAULT (public.gen_random_uuid ()) ::text,
  task_identifier text NOT NULL,
  payload json DEFAULT '{}' ::json NOT NULL,
  priority integer DEFAULT 0 NOT NULL,
  max_attempts integer DEFAULT 25 NOT NULL,
  key text,
  locked_at timestamptz,
  locked_by text,
  schedule_info json NOT NULL,
  last_scheduled timestamptz,
  last_scheduled_id bigint,
  CHECK (length(key) < 513),
  CHECK (length(task_identifier) < 127),
  CHECK (max_attempts > 0),
  CHECK (length(queue_name) < 127),
  CHECK (length(locked_by) > 3),
  UNIQUE (key)
);

COMMENT ON TABLE app_jobs.scheduled_jobs IS 'Recurring/cron-style job definitions with database scoping: each row spawns jobs on a schedule for a specific database';
COMMENT ON COLUMN app_jobs.scheduled_jobs.id IS 'Auto-incrementing scheduled job identifier';
COMMENT ON COLUMN app_jobs.scheduled_jobs.database_id IS 'Database this scheduled job belongs to, for multi-tenant isolation';
COMMENT ON COLUMN app_jobs.scheduled_jobs.queue_name IS 'Name of the queue spawned jobs are placed into';
COMMENT ON COLUMN app_jobs.scheduled_jobs.task_identifier IS 'Task type identifier for spawned jobs';
COMMENT ON COLUMN app_jobs.scheduled_jobs.payload IS 'JSON payload passed to each spawned job';
COMMENT ON COLUMN app_jobs.scheduled_jobs.priority IS 'Priority assigned to spawned jobs (lower = higher priority)';
COMMENT ON COLUMN app_jobs.scheduled_jobs.max_attempts IS 'Max retry attempts for spawned jobs';
COMMENT ON COLUMN app_jobs.scheduled_jobs.key IS 'Optional unique deduplication key';
COMMENT ON COLUMN app_jobs.scheduled_jobs.locked_at IS 'Timestamp when the scheduler locked this record for processing';
COMMENT ON COLUMN app_jobs.scheduled_jobs.locked_by IS 'Identifier of the scheduler worker holding the lock';
COMMENT ON COLUMN app_jobs.scheduled_jobs.schedule_info IS 'JSON schedule configuration (e.g. cron expression, interval)';
COMMENT ON COLUMN app_jobs.scheduled_jobs.last_scheduled IS 'Timestamp when a job was last spawned from this schedule';
COMMENT ON COLUMN app_jobs.scheduled_jobs.last_scheduled_id IS 'ID of the last job spawned from this schedule';

COMMIT;

