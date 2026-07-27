-- Revert schemas/function_resolution/procedures/resolve_invocation from pg

BEGIN;

DROP FUNCTION function_resolution.resolve_invocation;

COMMIT;
