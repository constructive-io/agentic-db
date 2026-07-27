-- Verify schemas/jwt_private/procedures/current_graph_execution_id on pg

BEGIN;

SELECT verify_function ('jwt_private.current_graph_execution_id');

ROLLBACK;
