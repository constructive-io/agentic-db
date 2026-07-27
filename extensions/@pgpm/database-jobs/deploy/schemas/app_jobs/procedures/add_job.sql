-- Deploy schemas/app_jobs/procedures/add_job to pg
-- requires: schemas/app_jobs/schema
-- requires: schemas/app_jobs/tables/jobs/table
-- requires: schemas/app_jobs/tables/job_queues/table
-- requires: pgpm-jwt-claims:schemas/jwt_private/procedures/current_database_id
-- requires: pgpm-jwt-claims:schemas/jwt_public/procedures/current_user_id
-- requires: pgpm-jwt-claims:schemas/jwt_public/procedures/current_principal_id

BEGIN;
CREATE FUNCTION app_jobs.add_job (
  identifier text,
  payload json DEFAULT '{}' ::json,
  job_key text DEFAULT NULL,
  queue_name text DEFAULT NULL,
  run_at timestamptz DEFAULT now(),
  max_attempts integer DEFAULT 25,
  priority integer DEFAULT 0,
  entity_id uuid DEFAULT NULL,
  organization_id uuid DEFAULT NULL,
  entity_type text DEFAULT NULL,
  function_definition_id uuid DEFAULT NULL,
  definition_scope text DEFAULT NULL
)
  RETURNS app_jobs.jobs
  AS $$
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
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;

COMMIT;
