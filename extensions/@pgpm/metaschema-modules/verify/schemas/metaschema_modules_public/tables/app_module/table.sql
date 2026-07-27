-- Verify schemas/metaschema_modules_public/tables/app_module/table on pg

BEGIN;

SELECT id, database_id, scope, apps_table_id
FROM metaschema_modules_public.app_module
WHERE false;

ROLLBACK;
