-- Deploy schemas/function_resolution/procedures/enqueue to pg
-- requires: schemas/function_resolution/schema
-- requires: schemas/function_resolution/procedures/resolve
-- requires: schemas/function_resolution/procedures/routing
-- requires: pgpm-app-scope:schemas/app_scope/procedures/frames
-- requires: pgpm-database-jobs:schemas/app_jobs/procedures/add_job
-- requires: pgpm-jwt-claims:schemas/jwt_private/procedures/current_database_id

BEGIN;

-- enqueue: the single resolver-aware entry point every FUNCTION job producer
-- calls (the invocation-enqueue trigger and the generated data-job triggers). It
-- resolves the winning function definition for (execution database, scope,
-- entity, task_identifier) BEFORE the row is inserted, stamps the
-- (function_definition_id, definition_scope) pair, applies the definition's own
-- queue routing, and delegates the physical insert/upsert to the low-level
-- app_jobs.add_job primitive.
--
-- Layering: app_jobs (pgpm-database-jobs) is the generic queue primitive and is
-- deliberately kept resolver-free. The resolver-aware helper lives here, one
-- layer up, built ONLY on portable pieces: app_scope (scope chain) + the
-- metaschema catalog tables (metaschema-schema / metaschema-modules) + app_jobs.
-- No core packages/metaschema functions and no AST/deparser runtime, so this can
-- be installed into any provisioned database whose catalog is populated.
--
-- Resolution vs. a supplied pair:
--   * function_definition_id supplied (invocation lane — the BEFORE INSERT
--     resolve trigger already stamped the row): the pair is trusted as-is and
--     used only to look up routing; no re-resolution.
--   * pair not supplied and should_resolve = true (data-job trigger lane):
--     resolve deterministically across the scope chain. Definition-less tasks
--     stay allowed (require_definition => false) — email:*/sms:*/etc. resolve to
--     nothing and enqueue with a NULL pair, routed by task_identifier alone.
--
-- The execution database is read from JWT (exactly like add_job), so the row's
-- database_id and the resolution database are always the same value.
--
-- RESOLUTION coordinate vs BILLING entity (constructive-planning #1183):
--   * resolution_scope / resolution_key start the scope-chain walk (where a
--     function definition is looked up). They default to the execution scope /
--     entity so the invocation lane is untouched; the data-job trigger lane
--     passes the row's own scope-key explicitly.
--   * entity_id / organization_id / entity_type are the BILLING/metering
--     attribution, passed straight through to add_job and NEVER used to key the
--     resolution walk. The two are distinct end-to-end.
CREATE FUNCTION function_resolution.enqueue(
    task_identifier text,
    payload json DEFAULT '{}'::json,
    scope text DEFAULT NULL,
    entity_id uuid DEFAULT NULL,
    function_definition_id uuid DEFAULT NULL,
    definition_scope text DEFAULT NULL,
    job_key text DEFAULT NULL,
    queue_name text DEFAULT NULL,
    run_at timestamptz DEFAULT now(),
    max_attempts integer DEFAULT NULL,
    priority integer DEFAULT NULL,
    organization_id uuid DEFAULT NULL,
    entity_type text DEFAULT NULL,
    should_resolve boolean DEFAULT true,
    resolution_scope text DEFAULT NULL,
    resolution_key uuid DEFAULT NULL
) RETURNS app_jobs.jobs AS $$
DECLARE
    v_database_id uuid;
    v_exec_scope text;
    v_resolution_scope text;
    v_resolution_key uuid;
    v_fn_id uuid;
    v_def_scope text;
    v_defs_db uuid;
    v_queue_name text;
    v_priority integer;
    v_max_attempts integer;
BEGIN
    v_database_id := jwt_private.current_database_id();

    -- Hard contract: the execution scope is a provisioning-time constant at the
    -- call site, never silently defaulted (constructive-planning #1183).
    IF scope IS NULL THEN
        RAISE EXCEPTION 'ENQUEUE_SCOPE_REQUIRED: scope is required (no default scope)';
    END IF;
    v_exec_scope := scope;

    -- The resolution walk starts from a scope-key SEPARATE from the billing
    -- entity_id. It defaults to the execution scope/entity so the invocation lane
    -- (which supplies a stamped pair and never resolves here) is unchanged.
    v_resolution_scope := COALESCE(resolution_scope, scope);
    v_resolution_key := COALESCE(resolution_key, entity_id);

    v_fn_id := function_definition_id;
    v_def_scope := definition_scope;

    -- Resolve the winning definition when the caller did not already stamp one.
    IF v_fn_id IS NULL AND should_resolve THEN
        SELECT r.function_definition_id, r.resolved_scope
        INTO v_fn_id, v_def_scope
        FROM function_resolution.resolve(
            v_database_id, v_resolution_scope, v_resolution_key, task_identifier, false
        ) r;
    END IF;

    -- Definition routing: read queue_name/priority/max_attempts from the exact
    -- winning definition (no scope-chain re-walk). The definition's home database
    -- is the frame's lookup_database_id for its scope (the platform database for a
    -- platform-scope definition, the execution database otherwise).
    IF v_fn_id IS NOT NULL AND v_def_scope IS NOT NULL THEN
        SELECT f.lookup_database_id
        INTO v_defs_db
        FROM app_scope.frames(v_database_id, v_resolution_scope, v_resolution_key) f
        WHERE f.scope = v_def_scope
        LIMIT 1;

        IF v_defs_db IS NULL THEN
            v_defs_db := v_database_id;
        END IF;

        SELECT rt.queue_name, rt.priority, rt.max_attempts
        INTO v_queue_name, v_priority, v_max_attempts
        FROM function_resolution.routing(v_defs_db, v_def_scope, v_fn_id) rt;
    END IF;

    -- Caller-supplied routing always wins over the definition's; the definition's
    -- wins over the add_job hard defaults.
    RETURN app_jobs.add_job(
        identifier := task_identifier,
        payload := COALESCE(payload, '{}'::json),
        job_key := job_key,
        queue_name := COALESCE(queue_name, v_queue_name),
        run_at := COALESCE(run_at, now()),
        max_attempts := COALESCE(max_attempts, v_max_attempts, 25),
        priority := COALESCE(priority, v_priority, 0),
        entity_id := entity_id,
        organization_id := organization_id,
        entity_type := entity_type,
        function_definition_id := v_fn_id,
        definition_scope := v_def_scope
    );
END;
$$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

COMMENT ON FUNCTION function_resolution.enqueue(text, json, text, uuid, uuid, text, text, text, timestamptz, integer, integer, uuid, text, boolean, text, uuid) IS
'Resolver-aware job enqueue: resolves (or trusts a supplied) function definition for the execution (database, scope, entity, task_identifier), stamps the (function_definition_id, definition_scope) pair and the definition''s queue routing, then delegates the insert to app_jobs.add_job. The single enqueue path for function jobs; definition-less tasks enqueue with a NULL pair. Portable: built only on app_scope + the metaschema catalog + app_jobs, no AST/deparser runtime.';

COMMIT;
