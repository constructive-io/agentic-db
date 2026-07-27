-- Revert schemas/function_resolution/procedures/probe from pg

BEGIN;

DROP FUNCTION function_resolution.probe;

COMMIT;
