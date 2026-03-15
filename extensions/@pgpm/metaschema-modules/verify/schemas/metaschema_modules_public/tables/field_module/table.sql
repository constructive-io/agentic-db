-- Verify schemas/metaschema_modules_public/tables/field_module/table on pg

BEGIN;

SELECT id, database_id, private_schema_id, table_id, field_id, node_type, data, triggers, functions
FROM metaschema_modules_public.field_module
WHERE FALSE;

ROLLBACK;
