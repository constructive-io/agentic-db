-- Revert schemas/app_scope/procedures/platform_database_id from pg

BEGIN;

DROP FUNCTION app_scope.platform_database_id;

COMMIT;
