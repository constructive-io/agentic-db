-- Deploy schemas/app_jobs/procedures/add_scheduled_job to pg

-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/scheduled_jobs/table
-- requires: pgpm-jwt-claims:schemas/jwt_private/procedures/current_database_id
-- requires: pgpm-jwt-claims:schemas/jwt_public/procedures/current_user_id

BEGIN;

CREATE FUNCTION app_jobs.add_scheduled_job(
  identifier text,
  payload json DEFAULT '{}'::json,
  schedule_info json DEFAULT '{}'::json,
  job_key text DEFAULT NULL,
  queue_name text DEFAULT NULL,
  max_attempts integer DEFAULT 25,
  priority integer DEFAULT 0,
  entity_id uuid DEFAULT NULL,
  db_id uuid DEFAULT NULL
)
  RETURNS app_jobs.scheduled_jobs
  AS $$
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
$$
LANGUAGE 'plpgsql'
VOLATILE
SECURITY DEFINER;
COMMIT;

