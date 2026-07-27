-- Verify schemas/metaschema_modules_public/tables/namespace_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id,
       namespaces_table_id, namespace_events_table_id,
       namespaces_table_name, namespace_events_table_name,
       entity_table_id, policies
FROM metaschema_modules_public.namespace_module
WHERE false;

ROLLBACK;
