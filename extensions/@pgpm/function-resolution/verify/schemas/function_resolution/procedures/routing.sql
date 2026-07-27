-- Verify schemas/function_resolution/procedures/routing  on pg

BEGIN;

SELECT verify_function ('function_resolution.routing');

ROLLBACK;
