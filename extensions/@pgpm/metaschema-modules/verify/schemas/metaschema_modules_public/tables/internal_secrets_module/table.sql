-- Verify schemas/metaschema_modules_public/tables/internal_secrets_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, internal_secrets_table_id, scope, prefix
  FROM metaschema_modules_public.internal_secrets_module
 WHERE FALSE;

ROLLBACK;
