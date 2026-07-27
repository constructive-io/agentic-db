-- Revert schemas/app_scope/procedures/frames from pg

BEGIN;

DROP FUNCTION app_scope.frames;

COMMIT;
