-- Verify schemas/metaschema_modules_public/tables/graph_module/table on pg

SELECT id, database_id
FROM metaschema_modules_public.graph_module
WHERE FALSE;
