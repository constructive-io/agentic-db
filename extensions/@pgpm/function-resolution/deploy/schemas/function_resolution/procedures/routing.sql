-- Deploy schemas/function_resolution/procedures/routing to pg
-- requires: schemas/function_resolution/schema
-- requires: schemas/function_resolution/procedures/definitions_location

BEGIN;

-- routing: load the queue-routing fields (queue_name, priority, max_attempts)
-- from ONE already-resolved function definition.
--
-- The winning definition's scope is already known, so this does NOT re-walk the
-- scope chain — it loads the single row by id from that scope's definitions
-- table (located deterministically via function_resolution.definitions_location).
-- Callers pass the DEFINITION's home database (the platform database for a
-- platform-scope definition, the execution database otherwise). Returns no row
-- when the scope has no provisioned function_module or the id is absent, letting
-- the caller fall back to queue defaults.
--
-- The probe is a dynamic SELECT against a dynamically-named table, built with
-- format()/quote_ident + EXECUTE ... USING. No AST/deparser dependency.
CREATE FUNCTION function_resolution.routing(
    database_id uuid,
    scope text,
    function_definition_id uuid
) RETURNS TABLE (
    queue_name text,
    priority integer,
    max_attempts integer
) AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
