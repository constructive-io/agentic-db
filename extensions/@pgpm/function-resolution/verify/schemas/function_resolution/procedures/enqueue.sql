-- Verify schemas/function_resolution/procedures/enqueue  on pg

BEGIN;

SELECT verify_function ('function_resolution.enqueue');

ROLLBACK;
