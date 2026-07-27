-- Deploy schemas/function_resolution/procedures/probe to pg
-- requires: schemas/function_resolution/schema
-- requires: schemas/function_resolution/procedures/definitions_location

BEGIN;

-- probe: probe ONE scope's definitions table (in one database) for a
-- task_identifier. Returns the definition id, or NULL when the scope has no
-- module or no matching row.
--
--   entity_field IS NULL  (global scopes: app/platform):
--     SELECT id FROM <schema>.<table> WHERE task_identifier = $1
--   entity_field present   (database/entity scopes):
--     exact:   WHERE task_identifier = $1 AND <entity_field> = $2   (most specific)
--     default: WHERE task_identifier = $1 AND <entity_field> IS NULL
--
-- The exact-key probe is tried first, then the scope-default (entity_field IS
-- NULL) row — most-specific wins, and neither uses LIMIT 1. Same-(scope,key)
-- duplicates are prevented by the definitions table's UNIQUE constraint.
--
-- Each probe is a dynamic SELECT against a dynamically-named table, built with
-- format()/quote_ident (%I for the schema/table/key identifiers) and run via
-- EXECUTE ... USING (values are bound $1/$2). No AST/deparser dependency, so
-- this is portable into any provisioned database.
CREATE FUNCTION function_resolution.probe(
    database_id uuid,
    scope text,
    key uuid,
    task_identifier text
) RETURNS uuid AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
