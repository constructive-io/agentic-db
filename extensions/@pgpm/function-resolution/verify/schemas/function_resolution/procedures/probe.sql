-- Verify schemas/function_resolution/procedures/probe  on pg

BEGIN;

SELECT verify_function ('function_resolution.probe');

ROLLBACK;
