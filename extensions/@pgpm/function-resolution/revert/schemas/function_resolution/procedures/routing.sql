-- Revert schemas/function_resolution/procedures/routing from pg

BEGIN;

DROP FUNCTION function_resolution.routing;

COMMIT;
