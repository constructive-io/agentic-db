-- Verify schemas/metaschema_modules_public/tables/resource_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id,
       resources_table_id, resource_events_table_id,
       resources_table_name, resource_events_table_name,
       resolved_requirements_view_name, requirements_state_view_name,
       scope, prefix, entity_table_id, namespace_module_id,
       policies, provisions, default_permissions
FROM metaschema_modules_public.resource_module
WHERE FALSE;

ROLLBACK;
