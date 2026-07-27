-- Verify schemas/metaschema_modules_public/tables/transfer_log_module/table on pg

SELECT id, database_id, schema_id, private_schema_id,
       transfer_log_table_id, transfer_log_table_name,
       usage_summary_table_id, usage_summary_table_name,
       "interval", retention, premake,
       actor_fk_table_id, entity_fk_table_id,
       prefix
FROM metaschema_modules_public.transfer_log_module
WHERE FALSE;
