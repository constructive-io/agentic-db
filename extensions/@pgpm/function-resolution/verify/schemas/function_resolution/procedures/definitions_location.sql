-- Verify schemas/function_resolution/procedures/definitions_location  on pg

BEGIN;

SELECT verify_function ('function_resolution.definitions_location');

ROLLBACK;
