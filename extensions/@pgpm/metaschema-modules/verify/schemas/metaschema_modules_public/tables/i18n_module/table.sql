-- Verify schemas/metaschema_modules_public/tables/i18n_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id, settings_table_id, api_name, private_api_name
FROM metaschema_modules_public.i18n_module
WHERE FALSE;

ROLLBACK;
