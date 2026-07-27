\echo Use "CREATE EXTENSION pgpm-function-resolution" to load this file. \quit
CREATE SCHEMA IF NOT EXISTS function_resolution;

GRANT USAGE ON SCHEMA function_resolution TO administrator;

GRANT USAGE ON SCHEMA function_resolution TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA function_resolution
  GRANT EXECUTE ON FUNCTIONS TO administrator;

CREATE FUNCTION function_resolution.definitions_location(
  database_id uuid,
  scope text
) RETURNS TABLE (
  schema_name text,
  table_name text,
  entity_field text
) AS $EOFCODE$
DECLARE
    v_defs_table_id uuid;
    v_entity_field text;
BEGIN
    SELECT fm.definitions_table_id, fm.entity_field
    INTO v_defs_table_id, v_entity_field
    FROM metaschema_modules_public.function_module fm
    WHERE fm.database_id = definitions_location.database_id
      AND fm.scope = definitions_location.scope;

    IF NOT FOUND OR v_defs_table_id IS NULL THEN
        RETURN;
    END IF;

    SELECT s.schema_name, t.name
    INTO definitions_location.schema_name, definitions_location.table_name
    FROM metaschema_public.schema s
    JOIN metaschema_public."table" t ON (t.schema_id = s.id AND t.database_id = s.database_id)
    WHERE t.id = v_defs_table_id;

    IF NOT FOUND THEN
        RETURN;
    END IF;

    definitions_location.entity_field := v_entity_field;
    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION function_resolution.probe(
  database_id uuid,
  scope text,
  key uuid,
  task_identifier text
) RETURNS uuid AS $EOFCODE$
DECLARE
    v_schema text;
    v_table text;
    v_entity_field text;
    v_id uuid;
    v_query text;
BEGIN
    SELECT l.schema_name, l.table_name, l.entity_field
    INTO v_schema, v_table, v_entity_field
    FROM function_resolution.definitions_location(probe.database_id, probe.scope) l;

    IF v_schema IS NULL THEN
        RETURN NULL;
    END IF;

    IF v_entity_field IS NULL THEN
        -- SELECT id FROM "<schema>"."<table>" WHERE task_identifier = $1
        v_query := format(
            'SELECT id FROM %I.%I WHERE task_identifier = $1',
            v_schema, v_table
        );
        EXECUTE v_query INTO v_id USING task_identifier;
        RETURN v_id;
    END IF;

    -- Exact scope-key match (most specific).
    -- SELECT id FROM "<schema>"."<table>"
    --   WHERE task_identifier = $1 AND "<entity_field>" = $2
    v_query := format(
        'SELECT id FROM %I.%I WHERE task_identifier = $1 AND %I = $2',
        v_schema, v_table, v_entity_field
    );
    EXECUTE v_query INTO v_id USING task_identifier, key;
    IF v_id IS NOT NULL THEN
        RETURN v_id;
    END IF;

    -- Scope-default row (entity_field IS NULL) within an entity-scoped table.
    -- SELECT id FROM "<schema>"."<table>"
    --   WHERE task_identifier = $1 AND "<entity_field>" IS NULL
    v_query := format(
        'SELECT id FROM %I.%I WHERE task_identifier = $1 AND %I IS NULL',
        v_schema, v_table, v_entity_field
    );
    EXECUTE v_query INTO v_id USING task_identifier;
    RETURN v_id;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION function_resolution.routing(
  database_id uuid,
  scope text,
  function_definition_id uuid
) RETURNS TABLE (
  queue_name text,
  priority int,
  max_attempts int
) AS $EOFCODE$
DECLARE
    v_schema text;
    v_table text;
    v_entity_field text;
    v_query text;
BEGIN
    SELECT l.schema_name, l.table_name, l.entity_field
    INTO v_schema, v_table, v_entity_field
    FROM function_resolution.definitions_location(routing.database_id, routing.scope) l;

    IF v_schema IS NULL OR function_definition_id IS NULL THEN
        RETURN;
    END IF;

    -- SELECT queue_name, priority, max_attempts FROM "<schema>"."<table>" WHERE id = $1
    v_query := format(
        'SELECT queue_name, priority, max_attempts FROM %I.%I WHERE id = $1',
        v_schema, v_table
    );

    EXECUTE v_query
        INTO routing.queue_name,
             routing.priority,
             routing.max_attempts
        USING function_definition_id;

    -- Only surface a routing row when the definition actually exists (a missing
    -- id leaves every column NULL — the caller wants defaults, not a NULL row).
    IF routing.queue_name IS NULL
       AND routing.priority IS NULL
       AND routing.max_attempts IS NULL THEN
        RETURN;
    END IF;

    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION function_resolution.resolve(
  database_id uuid,
  scope text,
  entity_id uuid,
  task_identifier text,
  require_definition boolean DEFAULT true
) RETURNS TABLE (
  function_definition_id uuid,
  resolved_scope text
) AS $EOFCODE$
DECLARE
    v_frame record;
    v_id uuid;
BEGIN
    FOR v_frame IN
        SELECT f.scope, f.lookup_database_id, f.key_value
        FROM app_scope.frames(resolve.database_id, resolve.scope, resolve.entity_id) f
    LOOP
        v_id := function_resolution.probe(
            v_frame.lookup_database_id,
            v_frame.scope,
            v_frame.key_value,
            task_identifier
        );
        IF v_id IS NOT NULL THEN
            resolve.function_definition_id := v_id;
            resolve.resolved_scope := v_frame.scope;
            RETURN NEXT;
            RETURN;
        END IF;
    END LOOP;

    -- Chain exhausted.
    IF require_definition THEN
        RAISE EXCEPTION 'FUNCTION_DEFINITION_NOT_FOUND: no definition for task_identifier "%" in the scope chain starting at scope "%" (database_id=%)',
            task_identifier, scope, database_id;
    END IF;

    RETURN;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION function_resolution.resolve_invocation(
  database_id uuid,
  scope text,
  entity_id uuid,
  task_identifier text,
  existing_id uuid DEFAULT NULL,
  existing_scope text DEFAULT NULL,
  api_binding_id uuid DEFAULT NULL
) RETURNS TABLE (
  function_definition_id uuid,
  definition_scope text
) AS $EOFCODE$
DECLARE
    v_scope text;
    v_lookup_db uuid;
    v_probe_key uuid;
    v_found uuid;
BEGIN
    -- API-provenance path (api_binding_id present) must declare its definition
    -- explicitly — the function_callable_check policy verifies the binding
    -- against the supplied function_definition_id. Never auto-resolve one for
    -- it: a NULL id stays NULL so the policy can deny.
    IF existing_id IS NULL AND api_binding_id IS NOT NULL THEN
        resolve_invocation.function_definition_id := NULL;
        resolve_invocation.definition_scope := NULL;
        RETURN NEXT;
        RETURN;
    END IF;

    IF existing_id IS NOT NULL THEN
        v_scope := COALESCE(resolve_invocation.existing_scope, resolve_invocation.scope);

        -- Key/probe database for the declared scope come from the same frame
        -- definition resolution uses, so an `org` pair keys by the owning org
        -- and the platform frame probes the platform database.
        SELECT f.lookup_database_id, f.key_value
        INTO v_lookup_db, v_probe_key
        FROM app_scope.frames(resolve_invocation.database_id, resolve_invocation.scope, resolve_invocation.entity_id) f
        WHERE f.scope = v_scope;

        IF v_lookup_db IS NULL THEN
            v_lookup_db := database_id;
        END IF;

        v_found := function_resolution.probe(
            v_lookup_db, v_scope, v_probe_key, task_identifier
        );
        IF v_found IS DISTINCT FROM existing_id THEN
            RAISE EXCEPTION 'FUNCTION_DEFINITION_INVALID_PAIR: function_definition_id % / definition_scope "%" does not resolve to task_identifier "%" (database_id=%)',
                existing_id, v_scope, task_identifier, database_id;
        END IF;

        resolve_invocation.function_definition_id := existing_id;
        resolve_invocation.definition_scope := v_scope;
        RETURN NEXT;
        RETURN;
    END IF;

    -- No pair supplied: resolve across the scope chain. Definition-less stays
    -- allowed, so a miss leaves both columns NULL rather than raising.
    SELECT r.function_definition_id, r.resolved_scope
    INTO resolve_invocation.function_definition_id, resolve_invocation.definition_scope
    FROM function_resolution.resolve(
        resolve_invocation.database_id, resolve_invocation.scope, resolve_invocation.entity_id, resolve_invocation.task_identifier, false
    ) r;

    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

CREATE FUNCTION function_resolution.enqueue(
  task_identifier text,
  payload pg_catalog.json DEFAULT '{}'::json,
  scope text DEFAULT NULL,
  entity_id uuid DEFAULT NULL,
  function_definition_id uuid DEFAULT NULL,
  definition_scope text DEFAULT NULL,
  job_key text DEFAULT NULL,
  queue_name text DEFAULT NULL,
  run_at timestamptz DEFAULT now(),
  max_attempts int DEFAULT NULL,
  priority int DEFAULT NULL,
  organization_id uuid DEFAULT NULL,
  entity_type text DEFAULT NULL,
  should_resolve boolean DEFAULT true,
  resolution_scope text DEFAULT NULL,
  resolution_key uuid DEFAULT NULL
) RETURNS app_jobs.jobs AS $EOFCODE$
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
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

COMMENT ON FUNCTION function_resolution.enqueue(text, pg_catalog.json, text, uuid, uuid, text, text, text, timestamptz, int, int, uuid, text, boolean, text, uuid) IS 'Resolver-aware job enqueue: resolves (or trusts a supplied) function definition for the execution (database, scope, entity, task_identifier), stamps the (function_definition_id, definition_scope) pair and the definition''s queue routing, then delegates the insert to app_jobs.add_job. The single enqueue path for function jobs; definition-less tasks enqueue with a NULL pair. Portable: built only on app_scope + the metaschema catalog + app_jobs, no AST/deparser runtime.';