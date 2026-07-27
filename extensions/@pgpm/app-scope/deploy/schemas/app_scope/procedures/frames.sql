-- Deploy schemas/app_scope/procedures/frames to pg
-- requires: schemas/app_scope/schema
-- requires: schemas/app_scope/procedures/platform_database_id
-- requires: schemas/app_scope/procedures/local_frames

BEGIN;

-- frames: the ordered scope-lookup frames for an execution, most-specific first.
-- Every scope-aware consumer resolves against this ONE definition.
--
-- The model is uniform and recursive: a database is the unit of resolution, and
-- every database climbs its own local chain (entity -> ... -> org -> app, or
-- database -> org -> app) via app_scope.local_frames. When the execution
-- database is a tenant database, that local chain is followed by the platform
-- database's OWN full local chain (database -> org -> app) and finally the single
-- global `platform` terminal. The platform database is not special-cased: it is
-- just the root database whose chain ends the search.
--
--   tenant `database` execution:
--     database -> org -> app                 (in the tenant database)
--       -> database -> org -> app -> platform  (in the platform database)
--   tenant custom entity execution (e.g. `team` owned by `department` owned by
--   an org):
--     team -> department -> org -> app       (in the tenant database)
--       -> database -> org -> app -> platform  (in the platform database)
--   platform database execution (any scope):
--     <local chain in the platform database> -> platform
--   `platform` execution scope (anywhere):
--     platform                               (the global root only)
--
-- key_value is the scope-key VALUE the consumer matches against its module's
-- recorded entity_field; global frames (app/platform) carry NULL. The platform
-- database id is resolved HERE and only here.
--
-- Portable: reads only the metaschema catalog (metaschema-schema /
-- metaschema-modules) and calls sibling app_scope functions — no AST/deparser.
CREATE FUNCTION app_scope.frames(
    database_id uuid,
    execution_scope text,
    entity_id uuid DEFAULT NULL
) RETURNS TABLE (
    scope text,
    lookup_database_id uuid,
    key_value uuid
) AS $$
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

    -- The platform database is resolved lazily: before it is registered (the
    -- generation bootstrap window, or an isolated generated metaschema), the
    -- execution database is its own root and the chain ends after its local
    -- frames. Only the `platform` execution scope requires the registration.
    SELECT d.id INTO v_platform_db
    FROM metaschema_public.database d
    WHERE d.platform;

    v_is_platform_db := (frames.database_id = v_platform_db);

    -- `platform` execution scope names the global root directly: nothing is more
    -- or less specific to walk, so the chain is just the terminal platform frame.
    IF execution_scope = 'platform' THEN
        IF v_platform_db IS NULL THEN
            RAISE EXCEPTION 'PLATFORM_DATABASE_NOT_REGISTERED: no metaschema_public.database row has platform = true';
        END IF;
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

    -- No platform database registered: the local chain ends the search.
    IF v_platform_db IS NULL THEN
        RETURN;
    END IF;

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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.frames(uuid, text, uuid) IS
'Ordered scope-lookup frames for an execution, most-specific first. A database is the unit of resolution: each database climbs its own local chain (entity -> ... -> org -> app, or database -> org -> app) via app_scope.local_frames; a tenant execution then falls through to the platform database''s own full chain (database -> org -> app) and finally the single global `platform` terminal. The platform database is the root database, not a special case. Each frame carries the scope-key VALUE to match against a consuming module''s entity_field (global app/platform frames carry NULL) and the lookup_database_id whose module instance the frame is probed in. Single source of truth for scope resolution; never hand-order scopes or re-derive keys elsewhere. The platform database is resolved lazily: before one is registered (generation bootstrap, isolated metaschemas) the chain ends after the local frames, and only the `platform` execution scope raises PLATFORM_DATABASE_NOT_REGISTERED.';

COMMIT;
