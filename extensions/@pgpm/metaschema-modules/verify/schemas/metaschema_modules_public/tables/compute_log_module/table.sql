-- Verify schemas/metaschema_modules_public/tables/compute_log_module/table on pg

SELECT id, database_id, schema_id, private_schema_id,
       compute_log_table_id, compute_log_table_name,
       usage_summary_table_id, usage_summary_table_name,
       retention, premake,
       actor_fk_table_id, entity_fk_table_id,
       prefix
FROM metaschema_modules_public.compute_log_module
WHERE FALSE;
