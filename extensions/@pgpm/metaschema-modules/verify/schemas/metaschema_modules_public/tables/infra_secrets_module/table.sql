-- Verify schemas/metaschema_modules_public/tables/infra_secrets_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, secrets_table_id, scope, prefix
  FROM metaschema_modules_public.infra_secrets_module
 WHERE FALSE;

ROLLBACK;
