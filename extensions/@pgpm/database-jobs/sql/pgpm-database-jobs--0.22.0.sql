\echo Use "CREATE EXTENSION pgpm-database-jobs" to load this file. \quit
CREATE SCHEMA IF NOT EXISTS app_jobs;

GRANT USAGE ON SCHEMA app_jobs TO administrator;

GRANT USAGE ON SCHEMA app_jobs TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA app_jobs
  GRANT EXECUTE ON FUNCTIONS TO administrator;

CREATE FUNCTION app_jobs.tg_update_timestamps() RETURNS trigger AS $EOFCODE$
BEGIN
  IF TG_OP = 'INSERT' THEN
    NEW.created_at = NOW();
    NEW.updated_at = NOW();
  ELSIF TG_OP = 'UPDATE' THEN
    NEW.created_at = OLD.created_at;
    NEW.updated_at = greatest (now(), OLD.updated_at + interval '1 millisecond');
  END IF;
  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql;

CREATE FUNCTION app_jobs.tg_add_job_with_row_id() RETURNS trigger AS $EOFCODE$
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
    PERFORM
      app_jobs.add_job (tg_argv[0], json_build_object('id', NEW.id));
    RETURN NEW;
  END IF;
  IF (TG_OP = 'DELETE') THEN
    PERFORM
      app_jobs.add_job (tg_argv[0], json_build_object('id', OLD.id));
    RETURN OLD;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

COMMENT ON FUNCTION app_jobs.tg_add_job_with_row_id IS 'Useful shortcut to create a job on insert or update. Pass the task name as the trigger argument, and the record id will automatically be available on the JSON payload.';

CREATE FUNCTION app_jobs.tg_add_job_with_row() RETURNS trigger AS $EOFCODE$
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
    PERFORM
      app_jobs.add_job (TG_ARGV[0], to_json(NEW));
    RETURN NEW;
  END IF;
  IF (TG_OP = 'DELETE') THEN
    PERFORM
      app_jobs.add_job (TG_ARGV[0], to_json(OLD));
    RETURN OLD;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

COMMENT ON FUNCTION app_jobs.tg_add_job_with_row IS 'Useful shortcut to create a job on insert or update. Pass the task name as the trigger argument, and the record data will automatically be available on the JSON payload.';

CREATE FUNCTION app_jobs.json_build_object_apply(
  arguments text[]
) RETURNS pg_catalog.json AS $EOFCODE$
DECLARE
  arg text;
  _sql text;
  _res json;
  args text[];
BEGIN
  _sql = 'SELECT json_build_object(';
  FOR arg IN
  SELECT
    unnest(arguments)
    LOOP
      args = array_append(args, format('''%s''', arg));
    END LOOP;
  _sql = _sql || format('%s);', array_to_string(args, ','));
  EXECUTE _sql INTO _res;
  RETURN _res;
END;
$EOFCODE$ LANGUAGE plpgsql;

CREATE FUNCTION app_jobs.trigger_job_with_fields() RETURNS trigger AS $EOFCODE$
DECLARE
  arg text;
  fn text;
  i int;
  args text[];
BEGIN
  FOR i IN
  SELECT
    *
  FROM
    generate_series(1, TG_NARGS) g (i)
    LOOP
      IF (i = 1) THEN
        fn = TG_ARGV[i - 1];
      ELSE
        args = array_append(args, TG_ARGV[i - 1]);
        IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
          EXECUTE format('SELECT ($1).%s::text', TG_ARGV[i - 1])
          USING NEW INTO arg;
        END IF;
        IF (TG_OP = 'DELETE') THEN
          EXECUTE format('SELECT ($1).%s::text', TG_ARGV[i - 1])
          USING OLD INTO arg;
        END IF;
        args = array_append(args, arg);
      END IF;
    END LOOP;
  PERFORM
    app_jobs.add_job (fn, app_jobs.json_build_object_apply (args));
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
    RETURN NEW;
  END IF;
  IF (TG_OP = 'DELETE') THEN
    RETURN OLD;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

CREATE TABLE app_jobs.scheduled_jobs (
  id bigserial PRIMARY KEY,
  database_id uuid,
  actor_id uuid,
  entity_id uuid,
  queue_name text DEFAULT NULL,
  task_identifier text NOT NULL,
  payload pg_catalog.json DEFAULT '{}'::json NOT NULL,
  priority int DEFAULT 0 NOT NULL,
  max_attempts int DEFAULT 25 NOT NULL,
  key text,
  locked_at timestamptz,
  locked_by text,
  schedule_info pg_catalog.json NOT NULL,
  last_scheduled timestamptz,
  last_scheduled_id bigint,
  CHECK (length(key) < 513),
  CHECK (length(task_identifier) < 127),
  CHECK (max_attempts >= 1),
  CHECK (length(queue_name) < 127),
  CHECK (length(locked_by) > 3),
  UNIQUE (key)
);

COMMENT ON TABLE app_jobs.scheduled_jobs IS 'Recurring/cron-style job definitions: each row spawns jobs on a schedule, optionally scoped to a database';

COMMENT ON COLUMN app_jobs.scheduled_jobs.id IS 'Auto-incrementing scheduled job identifier';

COMMENT ON COLUMN app_jobs.scheduled_jobs.database_id IS 'Database this scheduled job belongs to (nullable for system-level schedules without tenant context)';

COMMENT ON COLUMN app_jobs.scheduled_jobs.actor_id IS 'User who created this scheduled job, read from JWT claims at creation time';

COMMENT ON COLUMN app_jobs.scheduled_jobs.entity_id IS 'Entity (org/team) this scheduled job is scoped to for billing; NULL means platform-level (resolved via database_id → owner_id)';

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

CREATE FUNCTION app_jobs.do_notify() RETURNS trigger AS $EOFCODE$
BEGIN
  PERFORM
    pg_notify(TG_ARGV[0], '');
  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql;

CREATE TRIGGER _900_notify_scheduled_job
  AFTER INSERT
  ON app_jobs.scheduled_jobs
  FOR EACH ROW
  EXECUTE PROCEDURE app_jobs.do_notify('scheduled_jobs:insert');

CREATE INDEX scheduled_jobs_priority_id_idx ON app_jobs.scheduled_jobs (priority, id);

CREATE INDEX scheduled_jobs_locked_by_idx ON app_jobs.scheduled_jobs (locked_by);

GRANT SELECT, INSERT, UPDATE, DELETE ON app_jobs.scheduled_jobs TO administrator;

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
  payload pg_catalog.json DEFAULT '{}'::json NOT NULL,
  priority int DEFAULT 0 NOT NULL,
  run_at timestamptz DEFAULT now() NOT NULL,
  attempts int DEFAULT 0 NOT NULL,
  max_attempts int DEFAULT 25 NOT NULL,
  key text,
  last_error text,
  locked_at timestamptz,
  locked_by text,
  is_available boolean GENERATED ALWAYS AS (locked_at IS NULL
    AND attempts < max_attempts) STORED NOT NULL,
  CHECK (length(key) < 513),
  CHECK (length(task_identifier) < 127),
  CHECK (max_attempts >= 1),
  CHECK (length(queue_name) < 127),
  CHECK (length(locked_by) > 3),
  CHECK (length(definition_scope) < 64),
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

ALTER TABLE app_jobs.jobs 
  ADD COLUMN created_at timestamptz;

ALTER TABLE app_jobs.jobs 
  ALTER COLUMN created_at SET DEFAULT now();

ALTER TABLE app_jobs.jobs 
  ADD COLUMN updated_at timestamptz;

ALTER TABLE app_jobs.jobs 
  ALTER COLUMN updated_at SET DEFAULT now();

CREATE TRIGGER _100_update_jobs_modtime_tg
  BEFORE INSERT OR UPDATE
  ON app_jobs.jobs
  FOR EACH ROW
  EXECUTE PROCEDURE app_jobs.tg_update_timestamps();

CREATE FUNCTION app_jobs.tg_increase_job_queue_count() RETURNS trigger AS $EOFCODE$
BEGIN
  INSERT INTO app_jobs.job_queues (queue_name, job_count)
    VALUES (NEW.queue_name, 1)
  ON CONFLICT (queue_name)
    DO UPDATE SET
      job_count = job_queues.job_count + 1;
  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _500_increase_job_queue_count_on_insert
  AFTER INSERT
  ON app_jobs.jobs
  FOR EACH ROW
  WHEN (new.queue_name IS NOT NULL)
  EXECUTE PROCEDURE app_jobs.tg_increase_job_queue_count();

CREATE TRIGGER _500_increase_job_queue_count_on_update
  AFTER UPDATE OF queue_name
  ON app_jobs.jobs
  FOR EACH ROW
  WHEN (new.queue_name IS DISTINCT FROM old.queue_name
    AND new.queue_name IS NOT NULL)
  EXECUTE PROCEDURE app_jobs.tg_increase_job_queue_count();

CREATE FUNCTION app_jobs.tg_jobs__after_insert() RETURNS trigger AS $EOFCODE$
BEGIN
  PERFORM
    pg_notify('jobs:insert', '');
  RETURN NULL;
END;
$EOFCODE$ LANGUAGE plpgsql;

CREATE TRIGGER _900_after_insert
  AFTER INSERT
  ON app_jobs.jobs
  FOR EACH STATEMENT
  EXECUTE PROCEDURE app_jobs.tg_jobs__after_insert();

CREATE FUNCTION app_jobs.tg_decrease_job_queue_count() RETURNS trigger AS $EOFCODE$
DECLARE
  v_new_job_count int;
BEGIN
  UPDATE
    app_jobs.job_queues
  SET
    job_count = job_queues.job_count - 1
  WHERE
    queue_name = OLD.queue_name
  RETURNING
    job_count INTO v_new_job_count;
  IF v_new_job_count <= 0 THEN
    DELETE FROM app_jobs.job_queues
    WHERE queue_name = OLD.queue_name
      AND job_count <= 0;
  END IF;
  RETURN OLD;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER decrease_job_queue_count_on_delete
  AFTER DELETE
  ON app_jobs.jobs
  FOR EACH ROW
  WHEN (old.queue_name IS NOT NULL)
  EXECUTE PROCEDURE app_jobs.tg_decrease_job_queue_count();

CREATE TRIGGER decrease_job_queue_count_on_update
  AFTER UPDATE OF queue_name
  ON app_jobs.jobs
  FOR EACH ROW
  WHEN (new.queue_name IS DISTINCT FROM old.queue_name
    AND old.queue_name IS NOT NULL)
  EXECUTE PROCEDURE app_jobs.tg_decrease_job_queue_count();

CREATE INDEX jobs_main_index ON app_jobs.jobs (priority, run_at) INCLUDE (id, queue_name) WHERE is_available = true;

CREATE INDEX jobs_no_queue_index ON app_jobs.jobs (priority, run_at) INCLUDE (id) WHERE is_available = true
  AND queue_name IS NULL;

CREATE INDEX jobs_locked_by_idx ON app_jobs.jobs (locked_by);

GRANT SELECT, INSERT, UPDATE, DELETE ON app_jobs.jobs TO administrator;

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

CREATE INDEX job_queues_locked_by_idx ON app_jobs.job_queues (locked_by);

GRANT SELECT, INSERT, UPDATE, DELETE ON app_jobs.job_queues TO administrator;

CREATE FUNCTION app_jobs.run_scheduled_job(
  id bigint,
  job_expiry interval DEFAULT '1 hours'
) RETURNS app_jobs.jobs AS $EOFCODE$
DECLARE
  j app_jobs.jobs;
  last_id bigint;
  lkd_by text;
BEGIN
  -- check last scheduled
  SELECT
    last_scheduled_id
  FROM
    app_jobs.scheduled_jobs s
  WHERE
    s.id = run_scheduled_job.id INTO last_id;

  -- if it's been scheduled check if it's been run
  
  IF (last_id IS NOT NULL) THEN
    SELECT
      locked_by
    FROM
      app_jobs.jobs js
    WHERE
      js.id = last_id
      AND (js.locked_at IS NULL -- never been run
        OR js.locked_at >= (NOW() - job_expiry)
        -- still running within a safe interval
) INTO lkd_by;
    IF (FOUND) THEN
      RAISE EXCEPTION 'ALREADY_SCHEDULED';
    END IF;
  END IF;

  -- insert new job
  INSERT INTO app_jobs.jobs (
    database_id,
    actor_id,
    entity_id,
    queue_name,
    task_identifier,
    payload,
    priority,
    max_attempts,
    key
  ) SELECT
    database_id,
    actor_id,
    entity_id,
    queue_name,
    task_identifier,
    payload,
    priority,
    max_attempts,
    key
  FROM
    app_jobs.scheduled_jobs s
  WHERE
    s.id = run_scheduled_job.id
  RETURNING
    * INTO j;
  -- update the scheduled job
  UPDATE
  app_jobs.scheduled_jobs s
  SET
    last_scheduled = NOW(),
    last_scheduled_id = COALESCE(j.id, s.last_scheduled_id)
  WHERE
    s.id = run_scheduled_job.id;
  RETURN j;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION app_jobs.reschedule_jobs(
  job_ids bigint[],
  run_at timestamptz DEFAULT NULL,
  priority int DEFAULT NULL,
  attempts int DEFAULT NULL,
  max_attempts int DEFAULT NULL
) RETURNS SETOF app_jobs.jobs LANGUAGE sql AS $EOFCODE$
  UPDATE
    app_jobs.jobs
  SET
    run_at = coalesce(reschedule_jobs.run_at, jobs.run_at),
    priority = coalesce(reschedule_jobs.priority, jobs.priority),
    attempts = coalesce(reschedule_jobs.attempts, jobs.attempts),
    max_attempts = coalesce(reschedule_jobs.max_attempts, jobs.max_attempts)
  WHERE
    id = ANY (job_ids)
    AND (locked_by IS NULL
      OR locked_at < NOW() - interval '4 hours')
  RETURNING
    *;
$EOFCODE$;

CREATE FUNCTION app_jobs.release_scheduled_jobs(
  worker_id text,
  ids bigint[] DEFAULT NULL
) RETURNS void AS $EOFCODE$
DECLARE
BEGIN
  -- clear the scheduled job
  UPDATE
    app_jobs.scheduled_jobs s
  SET
    locked_at = NULL,
    locked_by = NULL
  WHERE
    locked_by = worker_id
    AND (ids IS NULL
      OR s.id = ANY (ids));
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION app_jobs.release_jobs(
  worker_id text
) RETURNS void AS $EOFCODE$
DECLARE
BEGIN
  -- clear the job
  UPDATE
    app_jobs.jobs
  SET
    locked_at = NULL,
    locked_by = NULL,
    attempts = GREATEST (attempts - 1, 0)
  WHERE
    locked_by = worker_id;
  -- clear the queue
  UPDATE
    app_jobs.job_queues
  SET
    locked_at = NULL,
    locked_by = NULL
  WHERE
    locked_by = worker_id;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

CREATE FUNCTION app_jobs.permanently_fail_jobs(
  job_ids bigint[],
  error_message text DEFAULT NULL
) RETURNS SETOF app_jobs.jobs LANGUAGE sql AS $EOFCODE$
  UPDATE
    app_jobs.jobs
  SET
    last_error = coalesce(error_message, 'Manually marked as failed'),
    attempts = max_attempts
  WHERE
    id = ANY (job_ids)
    AND (locked_by IS NULL
      OR locked_at < NOW() - interval '4 hours')
  RETURNING
    *;
$EOFCODE$;

CREATE FUNCTION app_jobs.get_scheduled_job(
  worker_id text,
  task_identifiers text[] DEFAULT NULL
) RETURNS app_jobs.scheduled_jobs LANGUAGE plpgsql AS $EOFCODE$
DECLARE
  v_job_id bigint;
  v_row app_jobs.scheduled_jobs;
BEGIN

  --

  IF worker_id IS NULL THEN
    RAISE exception 'INVALID_WORKER_ID';
  END IF;

  --

  SELECT
    scheduled_jobs.id INTO v_job_id
  FROM
    app_jobs.scheduled_jobs
  WHERE (scheduled_jobs.locked_at IS NULL)
    AND (task_identifiers IS NULL
      OR task_identifier = ANY (task_identifiers))
  ORDER BY
    priority ASC,
    id ASC
  LIMIT 1
  FOR UPDATE
    SKIP LOCKED;

  --

  IF v_job_id IS NULL THEN
    RETURN NULL;
  END IF;

  --

  UPDATE
    app_jobs.scheduled_jobs
  SET
    locked_by = worker_id,
    locked_at = NOW()
  WHERE
    id = v_job_id
  RETURNING
    * INTO v_row;

  --

  RETURN v_row;
END;
$EOFCODE$;

CREATE FUNCTION app_jobs.get_job(
  worker_id text,
  task_identifiers text[] DEFAULT NULL,
  job_expiry interval DEFAULT '4 hours'
) RETURNS app_jobs.jobs LANGUAGE plpgsql AS $EOFCODE$
DECLARE
  v_job_id bigint;
  v_queue_name text;
  v_row app_jobs.jobs;
  v_now timestamptz = now();
BEGIN
  IF worker_id IS NULL THEN
    RAISE EXCEPTION 'INVALID_WORKER_ID';
  END IF;

  SELECT jobs.queue_name, jobs.id
    INTO v_queue_name, v_job_id
  FROM app_jobs.jobs
  WHERE is_available = true
    AND (jobs.locked_at IS NULL
      OR jobs.locked_at < (v_now - job_expiry))
    AND (jobs.queue_name IS NULL
      OR jobs.queue_name IN (
        SELECT jq.queue_name
        FROM app_jobs.job_queues jq
        WHERE (jq.locked_at IS NULL
            OR jq.locked_at < (v_now - job_expiry))
        FOR UPDATE SKIP LOCKED
      ))
    AND run_at <= v_now
    AND attempts < max_attempts
    AND (task_identifiers IS NULL
      OR task_identifier = ANY (task_identifiers))
  ORDER BY priority ASC, run_at ASC, id ASC
  LIMIT 1
  FOR UPDATE SKIP LOCKED;

  IF v_job_id IS NULL THEN
    RETURN NULL;
  END IF;

  IF v_queue_name IS NOT NULL THEN
    UPDATE app_jobs.job_queues
    SET locked_by = worker_id, locked_at = v_now
    WHERE job_queues.queue_name = v_queue_name;
  END IF;

  UPDATE app_jobs.jobs
  SET
    attempts = attempts + 1,
    locked_by = worker_id,
    locked_at = v_now
  WHERE id = v_job_id
  RETURNING * INTO v_row;

  RETURN v_row;
END;
$EOFCODE$;

CREATE FUNCTION app_jobs.fail_job(
  worker_id text,
  job_id bigint,
  error_message text
) RETURNS app_jobs.jobs LANGUAGE plpgsql STRICT AS $EOFCODE$
DECLARE
  v_row app_jobs.jobs;
BEGIN
  UPDATE
    app_jobs.jobs
  SET
    last_error = error_message,
    run_at = greatest (now(), run_at) + (exp(least (attempts, 10))::text || ' seconds')::interval,
    locked_by = NULL,
    locked_at = NULL
  WHERE
    id = job_id
    AND locked_by = worker_id
  RETURNING
    * INTO v_row;
  IF v_row.queue_name IS NOT NULL THEN
    UPDATE
      app_jobs.job_queues
    SET
      locked_by = NULL,
      locked_at = NULL
    WHERE
      queue_name = v_row.queue_name
      AND locked_by = worker_id;
  END IF;
  RETURN v_row;
END;
$EOFCODE$;

CREATE FUNCTION app_jobs.complete_jobs(
  job_ids bigint[]
) RETURNS SETOF app_jobs.jobs LANGUAGE sql AS $EOFCODE$
  DELETE FROM app_jobs.jobs
  WHERE id = ANY (job_ids)
    AND (locked_by IS NULL
      OR locked_at < NOW() - interval '4 hours')
  RETURNING
    *;
$EOFCODE$;

CREATE FUNCTION app_jobs.complete_job(
  worker_id text,
  job_id bigint
) RETURNS app_jobs.jobs LANGUAGE plpgsql AS $EOFCODE$
DECLARE
  v_row app_jobs.jobs;
BEGIN
  DELETE FROM app_jobs.jobs
  WHERE id = job_id
    AND locked_by = worker_id
  RETURNING
    * INTO v_row;
  IF v_row.queue_name IS NOT NULL THEN
    UPDATE
      app_jobs.job_queues
    SET
      locked_by = NULL,
      locked_at = NULL
    WHERE
      queue_name = v_row.queue_name
      AND locked_by = worker_id;
  END IF;
  RETURN v_row;
END;
$EOFCODE$;

CREATE FUNCTION app_jobs.add_scheduled_job(
  identifier text,
  payload pg_catalog.json DEFAULT '{}'::json,
  schedule_info pg_catalog.json DEFAULT '{}'::json,
  job_key text DEFAULT NULL,
  queue_name text DEFAULT NULL,
  max_attempts int DEFAULT 25,
  priority int DEFAULT 0,
  entity_id uuid DEFAULT NULL,
  db_id uuid DEFAULT NULL
) RETURNS app_jobs.scheduled_jobs AS $EOFCODE$
DECLARE
  v_job app_jobs.scheduled_jobs;
  v_database_id uuid;
  v_actor_id uuid;
BEGIN
  -- Callers that run outside a JWT context (e.g. provisioning triggers) pass
  -- db_id explicitly; everyone else keeps the JWT-derived default.
  v_database_id := coalesce(db_id, jwt_private.current_database_id());
  v_actor_id := jwt_public.current_user_id();

  IF job_key IS NOT NULL THEN

    -- Upsert job
    INSERT INTO app_jobs.scheduled_jobs (
      database_id,
      actor_id,
      entity_id,
      task_identifier,
      payload,
      queue_name,
      schedule_info,
      max_attempts,
      key,
      priority
      ) VALUES (
        v_database_id,
        v_actor_id,
        add_scheduled_job.entity_id,
        identifier,
        coalesce(payload, '{}'::json),
        queue_name,
        schedule_info,
        coalesce(max_attempts, 25),
        job_key,
        coalesce(priority, 0)
    )
    ON CONFLICT (key)
      DO UPDATE SET
        task_identifier = EXCLUDED.task_identifier,
        payload = EXCLUDED.payload,
        queue_name = EXCLUDED.queue_name,
        max_attempts = EXCLUDED.max_attempts,
        schedule_info = EXCLUDED.schedule_info,
        priority = EXCLUDED.priority
      WHERE
        scheduled_jobs.locked_at IS NULL
      RETURNING
        * INTO v_job;

    -- If upsert succeeded (insert or update), return early

    IF NOT (v_job IS NULL) THEN
      RETURN v_job;
    END IF;

    -- Upsert failed -> there must be an existing scheduled job that is locked. Remove
    -- and allow a new one to be inserted

    DELETE FROM
      app_jobs.scheduled_jobs
    WHERE
      KEY = job_key;
  END IF;

  INSERT INTO app_jobs.scheduled_jobs (
    database_id,
    actor_id,
    entity_id,
    task_identifier,
    payload,
    queue_name,
    schedule_info,
    max_attempts,
    priority
    ) VALUES (
    v_database_id,
    v_actor_id,
    add_scheduled_job.entity_id,
    identifier,
    payload,
    queue_name,
    schedule_info,
    max_attempts,
    priority
  ) RETURNING * INTO v_job;
  RETURN v_job;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

GRANT EXECUTE ON FUNCTION app_jobs.add_scheduled_job(text, pg_catalog.json, pg_catalog.json, text, text, int, int, uuid, uuid) TO authenticated;

CREATE FUNCTION app_jobs.schedule_min_interval_seconds(
  schedule_info pg_catalog.json
) RETURNS int AS $EOFCODE$
DECLARE
  v_rule text;
  v_fields text[];
  v_seconds_field text;
  v_minutes_field text;
  v_step int;
BEGIN
  IF schedule_info IS NULL THEN
    RETURN NULL;
  END IF;

  v_rule := schedule_info ->> 'rule';

  IF v_rule IS NULL THEN
    -- Recurrence-object form: second resolution when a "second" key is
    -- present, otherwise minute resolution.
    IF schedule_info -> 'second' IS NOT NULL THEN
      RETURN 1;
    ELSIF schedule_info -> 'minute' IS NOT NULL
      OR schedule_info -> 'hour' IS NOT NULL
      OR schedule_info -> 'dayOfWeek' IS NOT NULL
      OR schedule_info -> 'date' IS NOT NULL
      OR schedule_info -> 'month' IS NOT NULL THEN
      RETURN 60;
    END IF;
    RETURN NULL;
  END IF;

  v_fields := regexp_split_to_array(trim(v_rule), '\s+');

  IF array_length(v_fields, 1) = 6 THEN
    v_seconds_field := v_fields[1];
    v_minutes_field := v_fields[2];
  ELSIF array_length(v_fields, 1) = 5 THEN
    v_seconds_field := '0';
    v_minutes_field := v_fields[1];
  ELSE
    RETURN NULL;
  END IF;

  -- Second-resolution rules
  IF v_seconds_field = '*' THEN
    RETURN 1;
  END IF;
  IF v_seconds_field ~ '^\*/\d+$' THEN
    v_step := substring(v_seconds_field FROM 3)::int;
    RETURN GREATEST(v_step, 1);
  END IF;
  IF position(',' IN v_seconds_field) > 0 OR position('-' IN v_seconds_field) > 0 THEN
    -- Multiple seconds within each matching minute: could fire every second
    RETURN 1;
  END IF;

  -- Fixed second: at most once per matching minute
  IF v_minutes_field = '*' THEN
    RETURN 60;
  END IF;
  IF v_minutes_field ~ '^\*/\d+$' THEN
    v_step := substring(v_minutes_field FROM 3)::int;
    RETURN GREATEST(v_step, 1) * 60;
  END IF;
  IF position(',' IN v_minutes_field) > 0 OR position('-' IN v_minutes_field) > 0 THEN
    -- Multiple minutes within each matching hour: adjacent values can be
    -- one minute apart
    RETURN 60;
  END IF;

  -- Fixed minute: at most once per hour
  RETURN 3600;
END;
$EOFCODE$ LANGUAGE plpgsql IMMUTABLE;

CREATE FUNCTION app_jobs.add_job(
  identifier text,
  payload pg_catalog.json DEFAULT '{}'::json,
  job_key text DEFAULT NULL,
  queue_name text DEFAULT NULL,
  run_at timestamptz DEFAULT now(),
  max_attempts int DEFAULT 25,
  priority int DEFAULT 0,
  entity_id uuid DEFAULT NULL,
  organization_id uuid DEFAULT NULL,
  entity_type text DEFAULT NULL,
  function_definition_id uuid DEFAULT NULL,
  definition_scope text DEFAULT NULL
) RETURNS app_jobs.jobs AS $EOFCODE$
DECLARE
  v_job app_jobs.jobs;
  v_database_id uuid;
  v_actor_id uuid;
  v_principal_id uuid;
BEGIN
  -- Read context from JWT claims
  v_database_id := jwt_private.current_database_id();
  v_actor_id := jwt_public.current_user_id();

  v_principal_id := jwt_public.current_principal_id();

  IF job_key IS NOT NULL THEN
    -- Upsert job
    INSERT INTO app_jobs.jobs (
      database_id,
      actor_id,
      principal_id,
      entity_id,
      organization_id,
      entity_type,
      function_definition_id,
      definition_scope,
      task_identifier,
      payload,
      queue_name,
      run_at,
      max_attempts,
      key,
      priority
    ) VALUES (
        v_database_id,
        v_actor_id,
        v_principal_id,
        add_job.entity_id,
        add_job.organization_id,
        add_job.entity_type,
        add_job.function_definition_id,
        add_job.definition_scope,
        identifier,
        coalesce(payload, '{}'::json),
        queue_name,
        coalesce(run_at, now()),
        coalesce(max_attempts, 25),
        job_key,
        coalesce(priority, 0)
    )
    ON CONFLICT (key)
      DO UPDATE SET
        task_identifier = EXCLUDED.task_identifier,
        payload = EXCLUDED.payload,
        queue_name = EXCLUDED.queue_name,
        max_attempts = EXCLUDED.max_attempts,
        run_at = EXCLUDED.run_at,
        priority = EXCLUDED.priority,
        function_definition_id = EXCLUDED.function_definition_id,
        definition_scope = EXCLUDED.definition_scope,
        -- always reset error/retry state
        attempts = 0, last_error = NULL
      WHERE
        jobs.locked_at IS NULL
      RETURNING
        * INTO v_job;

    -- If upsert succeeded (insert or update), return early
    IF NOT (v_job IS NULL) THEN
      RETURN v_job;
    END IF;

    -- Upsert failed -> there must be an existing job that is locked. Remove
    -- existing key to allow a new one to be inserted, and prevent any
    -- subsequent retries by bumping attempts to the max allowed.
    UPDATE
      app_jobs.jobs
    SET
      key = NULL,
      attempts = jobs.max_attempts
    WHERE
      key = job_key;
  END IF;

  INSERT INTO app_jobs.jobs (
    database_id,
    actor_id,
    principal_id,
    entity_id,
    organization_id,
    entity_type,
    function_definition_id,
    definition_scope,
    task_identifier,
    payload,
    queue_name,
    run_at,
    max_attempts,
    priority
  ) VALUES (
    v_database_id,
    v_actor_id,
    v_principal_id,
    add_job.entity_id,
    add_job.organization_id,
    add_job.entity_type,
    add_job.function_definition_id,
    add_job.definition_scope,
    identifier,
    payload,
    queue_name,
    run_at,
    max_attempts,
    priority
  )
  RETURNING * INTO v_job;

  RETURN v_job;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

GRANT EXECUTE ON FUNCTION app_jobs.add_job(text, pg_catalog.json, text, text, timestamptz, int, int, uuid, uuid, text, uuid, text) TO authenticated;

CREATE FUNCTION app_jobs.remove_job(
  job_key text
) RETURNS app_jobs.jobs LANGUAGE plpgsql STRICT AS $EOFCODE$
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
$EOFCODE$;

CREATE FUNCTION app_jobs.force_unlock_workers(
  worker_ids text[]
) RETURNS void LANGUAGE sql VOLATILE AS $EOFCODE$
  UPDATE app_jobs.jobs
  SET locked_at = NULL, locked_by = NULL
  WHERE locked_by = ANY (worker_ids);

  UPDATE app_jobs.job_queues
  SET locked_at = NULL, locked_by = NULL
  WHERE locked_by = ANY (worker_ids);
$EOFCODE$;