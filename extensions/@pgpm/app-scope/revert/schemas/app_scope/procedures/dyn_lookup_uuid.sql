-- Revert schemas/app_scope/procedures/dyn_lookup_uuid from pg

BEGIN;

DROP FUNCTION app_scope.dyn_lookup_uuid;

COMMIT;
