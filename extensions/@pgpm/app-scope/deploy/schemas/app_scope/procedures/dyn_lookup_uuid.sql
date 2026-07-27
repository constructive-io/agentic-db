-- Deploy schemas/app_scope/procedures/dyn_lookup_uuid to pg
-- requires: schemas/app_scope/schema

BEGIN;

-- dyn_lookup_uuid: SELECT "<column>" FROM "<schema>"."<table>" WHERE id = $1.
-- The single dynamic owner-FK row walk used to climb to a parent entity id.
--
-- This is a dynamic SELECT against a dynamically-named table (the identifier is
-- data, the value is a bound $1 parameter) — the legitimate quote_ident/format
-- case, NOT the "build a function/trigger body" case. No AST/deparser runtime
-- dependency, so this is portable into any provisioned database.
CREATE FUNCTION app_scope.dyn_lookup_uuid(
    lookup_schema text,
    lookup_table text,
    lookup_column text,
    row_id uuid
) RETURNS uuid AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
