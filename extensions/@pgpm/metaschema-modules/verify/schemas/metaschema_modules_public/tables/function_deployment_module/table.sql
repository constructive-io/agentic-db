-- Verify schemas/metaschema_modules_public/tables/function_deployment_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id,
       deployments_table_id, deployment_events_table_id,
       deployments_table_name, deployment_events_table_name,
       scope, prefix, entity_table_id,
       function_module_id, namespace_module_id,
       policies, provisions
FROM metaschema_modules_public.function_deployment_module
WHERE false;

ROLLBACK;
