-- Verify schemas/metaschema_modules_public/tables/database_settings_module/table on pg

BEGIN;

SELECT id, database_id, scope, database_settings_table_id
FROM metaschema_modules_public.database_settings_module
WHERE false;

ROLLBACK;
