-- Revert schemas/function_resolution/schema from pg

BEGIN;

DROP SCHEMA function_resolution;

COMMIT;
