-- Deploy schemas/app_scope/procedures/membership_parent to pg
-- requires: schemas/app_scope/schema
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/table
-- requires: metaschema-modules:schemas/metaschema_modules_public/tables/memberships_module/table
-- requires: metaschema-modules:schemas/metaschema_modules_public/tables/membership_types_module/table

BEGIN;

-- membership_parent: for one entity scope, return its membership_type, the parent
-- scope to climb to, and the runtime entity table + owner FK column used to walk
-- to the parent row.
--
-- The runtime membership_types table (resolved per database) supplies the type
-- ints; metaschema_modules_public.memberships_module supplies the entity table
-- and owner field. Returns no row when the scope is not a membership scope
-- (e.g. `app`), signalling the caller to stop the membership walk.
--
-- The per-database membership_types probe is a dynamic SELECT against a
-- dynamically-named table, built with format()/quote_ident + EXECUTE ... USING
-- (identifier is data, values are bound params). No AST/deparser dependency.
CREATE FUNCTION app_scope.membership_parent(
    database_id uuid,
    scope text
) RETURNS TABLE (
    membership_type int,
    parent_scope text,
    entity_schema text,
    entity_table text,
    owner_field text
) AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
