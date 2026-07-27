-- Verify schemas/metaschema_modules_public/tables/integration_providers_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id, table_id, table_name, scope, prefix
  FROM metaschema_modules_public.integration_providers_module
 WHERE FALSE;

ROLLBACK;
