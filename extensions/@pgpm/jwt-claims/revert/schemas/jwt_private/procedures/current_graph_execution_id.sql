-- Revert schemas/jwt_private/procedures/current_graph_execution_id from pg

BEGIN;

DROP FUNCTION jwt_private.current_graph_execution_id;

COMMIT;
