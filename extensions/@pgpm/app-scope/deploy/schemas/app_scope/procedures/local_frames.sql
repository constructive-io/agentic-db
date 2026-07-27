-- Deploy schemas/app_scope/procedures/local_frames to pg
-- requires: schemas/app_scope/schema
-- requires: schemas/app_scope/procedures/membership_parent
-- requires: schemas/app_scope/procedures/dyn_lookup_uuid
-- requires: metaschema-schema:schemas/metaschema_public/tables/database/table

BEGIN;

-- local_frames: the ordered scope-lookup frames WITHIN a single database, most
-- specific first, from the given execution scope up through that database's `app`
-- global scope. This is the per-database climb; it never emits the cross-database
-- `platform` terminal (app_scope.frames appends that once, in the platform
-- database, as the shared global root).
--
--   * `app`      -> [app]
--   * `org`      -> [org(entity), app]
--   * `database` -> [database(db), org(db.owner_id, when owned), app]
--   * entity     -> [entity(entity), climb membership to org, app]
--
-- `database` is the synthetic per-database root (not a membership scope): it is
-- hardcoded, keyed by the database itself, and its owner is the org
-- (database.owner_id) — that FK is the bridge into the real scope tree, and from
-- the org onward every scope climbs uniformly. Entity scopes are NOT routed
-- through `database`; they climb their own membership tree straight to the owning
-- org. `platform` is not a within-database scope, so it yields nothing here.
--
-- key_value is the scope-key VALUE the consumer matches against its module's
-- recorded entity_field; the global `app` frame carries NULL. The membership
-- climb issues dynamic SELECTs against dynamically-named tables via
-- format()/quote_ident + EXECUTE ... USING — no AST/deparser, so this is
-- portable into any provisioned database.
CREATE FUNCTION app_scope.local_frames(
    database_id uuid,
    execution_scope text,
    entity_id uuid DEFAULT NULL
) RETURNS TABLE (
    scope text,
    lookup_database_id uuid,
    key_value uuid
) AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.local_frames(uuid, text, uuid) IS
'Ordered scope-lookup frames WITHIN one database (most specific first) from the given execution scope up through that database''s global `app` scope: entity -> (membership climb) -> org -> app, or database -> org -> app, or org -> app, or app. Never emits the cross-database `platform` terminal — app_scope.frames appends that. `database` is the synthetic per-database root (keyed by the database, owned by database.owner_id); entity scopes climb their membership tree straight to the owning org.';

COMMIT;
