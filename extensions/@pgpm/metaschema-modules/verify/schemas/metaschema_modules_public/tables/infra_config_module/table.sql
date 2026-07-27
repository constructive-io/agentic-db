-- Verify schemas/metaschema_modules_public/tables/infra_config_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, config_table_id, scope, prefix
  FROM metaschema_modules_public.infra_config_module
 WHERE FALSE;

ROLLBACK;
