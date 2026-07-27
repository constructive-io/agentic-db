-- Revert schemas/function_resolution/procedures/enqueue from pg

BEGIN;

DROP FUNCTION function_resolution.enqueue;

COMMIT;
