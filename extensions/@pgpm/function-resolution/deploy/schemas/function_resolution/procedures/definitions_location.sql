-- Deploy schemas/function_resolution/procedures/definitions_location to pg
-- requires: schemas/function_resolution/schema
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/table
-- requires: metaschema-modules:schemas/metaschema_modules_public/tables/function_module/table

BEGIN;

-- definitions_location: deterministically resolve the definitions table
-- (schema, table) and the scope-key column (entity_field) for one scope within
-- one database. Callers pass the frame's lookup_database_id (the platform
-- database for the platform frame), so the lookup is always a deterministic
-- (database_id, scope) match — never a scope-name special case. Returns no row
-- when the scope has no provisioned function_module.
CREATE FUNCTION function_resolution.definitions_location(
    database_id uuid,
    scope text
) RETURNS TABLE (
    schema_name text,
    table_name text,
    entity_field text
) AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
