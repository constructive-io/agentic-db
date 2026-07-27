-- Verify schemas/app_scope/procedures/platform_database_id  on pg

BEGIN;

SELECT verify_function ('app_scope.platform_database_id');

ROLLBACK;
