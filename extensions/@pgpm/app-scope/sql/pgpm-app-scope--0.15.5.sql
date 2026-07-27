\echo Use "CREATE EXTENSION pgpm-app-scope" to load this file. \quit
CREATE SCHEMA IF NOT EXISTS app_scope;

GRANT USAGE ON SCHEMA app_scope TO administrator;

GRANT USAGE ON SCHEMA app_scope TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA app_scope
  GRANT EXECUTE ON FUNCTIONS TO administrator;

CREATE FUNCTION app_scope.platform_database_id() RETURNS uuid AS $EOFCODE$
DECLARE
  v_database_id uuid;
BEGIN
  SELECT d.id INTO v_database_id
  FROM metaschema_public.database d
  WHERE d.platform;

  IF v_database_id IS NULL THEN
    RAISE EXCEPTION 'PLATFORM_DATABASE_NOT_REGISTERED: no metaschema_public.database row has platform = true';
  END IF;

  RETURN v_database_id;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.platform_database_id() IS 'Id of the platform (constructive) database: the singleton metaschema_public.database row with platform = true. Raises PLATFORM_DATABASE_NOT_REGISTERED if none is flagged.';

CREATE FUNCTION app_scope.dyn_lookup_uuid(
  lookup_schema text,
  lookup_table text,
  lookup_column text,
  row_id uuid
) RETURNS uuid AS $EOFCODE$
DECLARE
    v_result uuid;
    v_query text;
BEGIN
    v_query := format(
        'SELECT %I FROM %I.%I WHERE id = $1',
        lookup_column, lookup_schema, lookup_table
    );
    EXECUTE v_query INTO v_result USING row_id;
    RETURN v_result;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION app_scope.membership_parent(
  database_id uuid,
  scope text
) RETURNS TABLE (
  membership_type int,
  parent_scope text,
  entity_schema text,
  entity_table text,
  owner_field text
) AS $EOFCODE$
DECLARE
    v_types_table_id uuid;
    v_types_schema text;
    v_types_table text;
    v_membership_type int;
    v_parent_membership_type int;
    v_parent_scope text;
    v_entity_table_id uuid;
    v_entity_table_owner_id uuid;
    v_query text;
BEGIN
    SELECT mtm.table_id
    INTO v_types_table_id
    FROM metaschema_modules_public.membership_types_module mtm
    WHERE mtm.database_id = membership_parent.database_id;

    IF v_types_table_id IS NULL THEN
        RETURN;
    END IF;

    -- Locate the physical membership_types table (inline schema_and_table).
    SELECT s.schema_name, t.name
    INTO v_types_schema, v_types_table
    FROM metaschema_public.schema s
    JOIN metaschema_public."table" t ON (t.schema_id = s.id AND t.database_id = s.database_id)
    WHERE t.id = v_types_table_id;

    IF NOT FOUND THEN
        RETURN;
    END IF;

    -- SELECT id, parent_membership_type FROM "<types>" WHERE scope = $1
    v_query := format(
        'SELECT id, parent_membership_type FROM %I.%I WHERE scope = $1',
        v_types_schema, v_types_table
    );
    EXECUTE v_query INTO v_membership_type, v_parent_membership_type USING membership_parent.scope;

    IF v_membership_type IS NULL THEN
        RETURN;
    END IF;

    -- Resolve the parent scope name (custom/org/app parents alike).
    IF v_parent_membership_type IS NOT NULL THEN
        -- SELECT scope FROM "<types>" WHERE id = $1
        v_query := format(
            'SELECT scope FROM %I.%I WHERE id = $1',
            v_types_schema, v_types_table
        );
        EXECUTE v_query INTO v_parent_scope USING v_parent_membership_type;
    END IF;

    -- Entity table + owner FK for the current scope (static metaschema config).
    SELECT mm.entity_table_id, mm.entity_table_owner_id
    INTO v_entity_table_id, v_entity_table_owner_id
    FROM metaschema_modules_public.memberships_module mm
    WHERE mm.database_id = membership_parent.database_id
      AND mm.scope = membership_parent.scope;

    IF v_entity_table_id IS NOT NULL THEN
        -- inline schema_and_table
        SELECT s.schema_name, t.name
        INTO membership_parent.entity_schema, membership_parent.entity_table
        FROM metaschema_public.schema s
        JOIN metaschema_public."table" t ON (t.schema_id = s.id AND t.database_id = s.database_id)
        WHERE t.id = v_entity_table_id;

        IF v_entity_table_owner_id IS NOT NULL THEN
            -- inline field_name
            SELECT f.name
            INTO membership_parent.owner_field
            FROM metaschema_public.field f
            WHERE f.id = v_entity_table_owner_id
              AND f.table_id = v_entity_table_id;
        END IF;
    END IF;

    membership_parent.membership_type := v_membership_type;
    membership_parent.parent_scope := v_parent_scope;
    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

CREATE FUNCTION app_scope.local_frames(
  database_id uuid,
  execution_scope text,
  entity_id uuid DEFAULT NULL
) RETURNS TABLE (
  scope text,
  lookup_database_id uuid,
  key_value uuid
) AS $EOFCODE$
DECLARE
    v_exec text;
    v_current_scope text;
    v_current_key uuid;
    v_info record;
    v_parent_key uuid;
    v_org_id uuid;
    v_safety_counter int := 0;
BEGIN
    IF execution_scope IS NULL THEN
        RAISE EXCEPTION 'APP_SCOPE_LOCAL_FRAMES_SCOPE_REQUIRED: execution_scope is required (no default scope)';
    END IF;

    v_exec := execution_scope;

    -- `platform` is the cross-database terminal, never a within-database frame.
    IF v_exec = 'platform' THEN
        RETURN;
    END IF;

    IF v_exec = 'app' THEN
        scope := 'app';
        lookup_database_id := database_id;
        key_value := NULL;
        RETURN NEXT;
        RETURN;
    END IF;

    IF v_exec = 'org' THEN
        scope := 'org';
        lookup_database_id := database_id;
        key_value := entity_id;
        RETURN NEXT;

        scope := 'app';
        lookup_database_id := database_id;
        key_value := NULL;
        RETURN NEXT;
        RETURN;
    END IF;

    IF v_exec = 'database' THEN
        -- database frame keyed by the database itself (synthetic root).
        scope := 'database';
        lookup_database_id := database_id;
        key_value := database_id;
        RETURN NEXT;

        -- The organization that OWNS this database (database.owner_id) — the
        -- bridge from the hardcoded database root into the scope tree.
        SELECT d.owner_id INTO v_org_id
        FROM metaschema_public.database d
        WHERE d.id = local_frames.database_id;

        IF v_org_id IS NOT NULL THEN
            scope := 'org';
            lookup_database_id := database_id;
            key_value := v_org_id;
            RETURN NEXT;
        END IF;

        scope := 'app';
        lookup_database_id := database_id;
        key_value := NULL;
        RETURN NEXT;
        RETURN;
    END IF;

    -- Custom entity scope: its own frame, then walk the membership tree up to
    -- (and including) the owning org, emitting each parent frame, then app.
    scope := v_exec;
    lookup_database_id := database_id;
    key_value := entity_id;
    RETURN NEXT;

    v_current_scope := v_exec;
    v_current_key := entity_id;
    LOOP
        v_safety_counter := v_safety_counter + 1;
        IF v_safety_counter > 32 THEN
            RAISE EXCEPTION 'APP_SCOPE_LOCAL_FRAMES_DEPTH_EXCEEDED: scope chain exceeded 32 hops from scope "%" (database_id=%)',
                execution_scope, database_id;
        END IF;

        SELECT * INTO v_info
        FROM app_scope.membership_parent(local_frames.database_id, v_current_scope);

        -- Not a membership scope, or already at org/app: stop climbing.
        EXIT WHEN v_info.membership_type IS NULL;
        EXIT WHEN v_info.membership_type <= 2;

        -- Climb: resolve the parent entity id via the current owner FK.
        EXIT WHEN v_info.parent_scope IS NULL
            OR v_info.entity_schema IS NULL
            OR v_info.owner_field IS NULL
            OR v_current_key IS NULL;

        v_parent_key := app_scope.dyn_lookup_uuid(
            v_info.entity_schema, v_info.entity_table, v_info.owner_field, v_current_key
        );
        EXIT WHEN v_parent_key IS NULL;

        v_current_scope := v_info.parent_scope;
        v_current_key := v_parent_key;

        scope := v_current_scope;
        lookup_database_id := database_id;
        key_value := v_current_key;
        RETURN NEXT;
    END LOOP;

    -- This database's global app frame.
    scope := 'app';
    lookup_database_id := database_id;
    key_value := NULL;
    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.local_frames(uuid, text, uuid) IS 'Ordered scope-lookup frames WITHIN one database (most specific first) from the given execution scope up through that database''s global `app` scope: entity -> (membership climb) -> org -> app, or database -> org -> app, or org -> app, or app. Never emits the cross-database `platform` terminal — app_scope.frames appends that. `database` is the synthetic per-database root (keyed by the database, owned by database.owner_id); entity scopes climb their membership tree straight to the owning org.';

CREATE FUNCTION app_scope.frames(
  database_id uuid,
  execution_scope text,
  entity_id uuid DEFAULT NULL
) RETURNS TABLE (
  scope text,
  lookup_database_id uuid,
  key_value uuid
) AS $EOFCODE$
DECLARE
    v_platform_db uuid;
    v_is_platform_db boolean;
BEGIN
    -- Hard contract: the execution scope is always known at the call site (a
    -- scope-aware trigger lives on exactly one per-scope table, so its scope is a
    -- provisioning-time constant). A NULL scope is a caller bug, never a case to
    -- silently reinterpret as 'database'.
    IF execution_scope IS NULL THEN
        RAISE EXCEPTION 'APP_SCOPE_FRAMES_SCOPE_REQUIRED: execution_scope is required (no default scope)';
    END IF;

    v_platform_db := app_scope.platform_database_id();
    v_is_platform_db := (database_id = v_platform_db);

    -- `platform` execution scope names the global root directly: nothing is more
    -- or less specific to walk, so the chain is just the terminal platform frame.
    IF execution_scope = 'platform' THEN
        scope := 'platform';
        lookup_database_id := v_platform_db;
        key_value := NULL;
        RETURN NEXT;
        RETURN;
    END IF;

    -- The execution database's own local chain (entity -> ... -> org -> app, or
    -- database -> org -> app).
    RETURN QUERY
    SELECT lf.scope, lf.lookup_database_id, lf.key_value
    FROM app_scope.local_frames(frames.database_id, frames.execution_scope, frames.entity_id) lf;

    -- Fall through to the platform database's OWN full local chain (its
    -- database -> org -> app), unless the execution already ran inside the
    -- platform database (in which case its local chain above already covered it).
    IF NOT v_is_platform_db THEN
        RETURN QUERY
        SELECT lf.scope, lf.lookup_database_id, lf.key_value
        FROM app_scope.local_frames(v_platform_db, 'database', NULL) lf;
    END IF;

    -- The single global root: the platform terminal, resolved in the platform
    -- database.
    scope := 'platform';
    lookup_database_id := v_platform_db;
    key_value := NULL;
    RETURN NEXT;
END;
$EOFCODE$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.frames(uuid, text, uuid) IS 'Ordered scope-lookup frames for an execution, most-specific first. A database is the unit of resolution: each database climbs its own local chain (entity -> ... -> org -> app, or database -> org -> app) via app_scope.local_frames; a tenant execution then falls through to the platform database''s own full chain (database -> org -> app) and finally the single global `platform` terminal. The platform database is the root database, not a special case. Each frame carries the scope-key VALUE to match against a consuming module''s entity_field (global app/platform frames carry NULL) and the lookup_database_id whose module instance the frame is probed in. Single source of truth for scope resolution; never hand-order scopes or re-derive keys elsewhere.';