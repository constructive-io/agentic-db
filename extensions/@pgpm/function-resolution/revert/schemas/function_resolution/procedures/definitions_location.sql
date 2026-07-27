-- Revert schemas/function_resolution/procedures/definitions_location from pg

BEGIN;

DROP FUNCTION function_resolution.definitions_location;

COMMIT;
