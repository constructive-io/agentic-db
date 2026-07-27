-- Deploy schemas/app_jobs/tables/jobs/table to pg
-- requires: schemas/app_jobs/schema

BEGIN;
CREATE TABLE app_jobs.jobs (
  id bigserial PRIMARY KEY,
  database_id uuid,
  actor_id uuid,
  principal_id uuid,
  entity_id uuid,
  organization_id uuid,
  entity_type text,
  function_definition_id uuid,
  definition_scope text,
  queue_name text DEFAULT NULL,
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
  is_available boolean GENERATED ALWAYS AS ((locked_at IS NULL) AND (attempts < max_attempts)) STORED NOT NULL,
  CHECK (length(key) < 513),
  CHECK (length(task_identifier) < 127),
  CHECK (max_attempts >= 1),
  CHECK (length(queue_name) < 127),
  CHECK (length(locked_by) > 3),
  CHECK (length(definition_scope) < 64),
  -- All-or-nothing: a job either carries a fully-resolved function definition
  -- (id + scope) or neither. Handler/system tasks (email:*, sms:*, maintenance,
  -- etc.) legitimately carry neither and are routed by task_identifier alone.
  CHECK ((function_definition_id IS NULL) = (definition_scope IS NULL)),
  UNIQUE (key)
);

COMMENT ON TABLE app_jobs.jobs IS 'Background job queue: each row is a pending or in-progress task, optionally scoped to a database';
COMMENT ON COLUMN app_jobs.jobs.id IS 'Auto-incrementing job identifier';
COMMENT ON COLUMN app_jobs.jobs.database_id IS 'Database this job belongs to (nullable for system-level jobs without tenant context)';
COMMENT ON COLUMN app_jobs.jobs.actor_id IS 'User who triggered this job, read from JWT claims at enqueue time';
COMMENT ON COLUMN app_jobs.jobs.principal_id IS 'Principal that triggered this job; equals actor_id for human-triggered jobs, differs when an agent/API-key acts on behalf of a user';
COMMENT ON COLUMN app_jobs.jobs.entity_id IS 'Entity (org/team) this job is scoped to for billing; NULL means platform-level (resolved via database_id → owner_id)';
COMMENT ON COLUMN app_jobs.jobs.organization_id IS 'Top-level organization for this entity; resolved at enqueue time via get_organization_id(entity_type, entity_id)';
COMMENT ON COLUMN app_jobs.jobs.entity_type IS 'Entity type prefix (org, team, app, etc.) for interpreting entity_id';
COMMENT ON COLUMN app_jobs.jobs.function_definition_id IS 'For function jobs: the exact function definition resolved at enqueue time (scope-chain winner). NULL for handler/system tasks that have no function definition. Not an FK — definitions live in per-scope tables across databases; integrity is enforced by the resolver at enqueue.';
COMMENT ON COLUMN app_jobs.jobs.definition_scope IS 'For function jobs: the scope (database/org/app/platform) the winning definition was resolved at. Together with function_definition_id and database_id it identifies the exact physical definition to execute. NULL when function_definition_id is NULL.';
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
COMMENT ON COLUMN app_jobs.jobs.is_available IS 'Generated column: true when job is unlocked and has remaining attempts';

COMMIT;

