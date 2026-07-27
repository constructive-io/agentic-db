-- Verify schemas/function_resolution/procedures/resolve  on pg

BEGIN;

SELECT verify_function ('function_resolution.resolve');

ROLLBACK;
