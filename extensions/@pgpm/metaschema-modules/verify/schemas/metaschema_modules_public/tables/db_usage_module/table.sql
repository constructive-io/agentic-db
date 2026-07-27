-- Verify schemas/metaschema_modules_public/tables/db_usage_module/table on pg

SELECT id, database_id, schema_id, private_schema_id,
       retention, premake,
       collect_db_table_stats_function, collect_db_query_stats_function,
       rollup_db_table_stats_usage_summary_function, rollup_db_query_stats_usage_summary_function,
       prefix
FROM metaschema_modules_public.db_usage_module
WHERE FALSE;
