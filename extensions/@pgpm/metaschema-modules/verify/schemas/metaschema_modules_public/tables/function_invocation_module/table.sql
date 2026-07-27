-- Verify schemas/metaschema_modules_public/tables/function_invocation_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id,
       public_schema_name, private_schema_name,
       invocations_table_id, execution_logs_table_id,
       invocations_table_name, execution_logs_table_name,
       api_name, private_api_name,
       scope, prefix, entity_table_id,
       policies, provisions, default_permissions
FROM metaschema_modules_public.function_invocation_module
WHERE false;

ROLLBACK;
