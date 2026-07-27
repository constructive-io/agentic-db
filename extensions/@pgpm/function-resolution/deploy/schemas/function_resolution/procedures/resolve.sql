-- Deploy schemas/function_resolution/procedures/resolve to pg
-- requires: schemas/function_resolution/schema
-- requires: schemas/function_resolution/procedures/probe
-- requires: pgpm-app-scope:schemas/app_scope/procedures/frames

BEGIN;

-- resolve: deterministic cross-scope resolver. Iterates the ordered frames from
-- app_scope.frames (database -> org -> app -> platform for a tenant execution)
-- and probes each frame's definitions table with the frame's own key. First
-- match wins (most specific). The chain exhausted with no hit raises the typed
-- FUNCTION_DEFINITION_NOT_FOUND only when require_definition (definition-less
-- resolution stays allowed via require_definition => false). Cycle/depth safety
-- lives in app_scope.frames.
CREATE FUNCTION function_resolution.resolve(
    database_id uuid,
    scope text,
    entity_id uuid,
    task_identifier text,
    require_definition boolean DEFAULT true
) RETURNS TABLE (
    function_definition_id uuid,
    resolved_scope text
) AS $$
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
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMIT;
