-- Revert schemas/app_scope/procedures/local_frames from pg

BEGIN;

DROP FUNCTION app_scope.local_frames;

COMMIT;
