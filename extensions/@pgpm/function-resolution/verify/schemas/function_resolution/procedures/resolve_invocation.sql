-- Verify schemas/function_resolution/procedures/resolve_invocation  on pg

BEGIN;

SELECT verify_function ('function_resolution.resolve_invocation');

ROLLBACK;
