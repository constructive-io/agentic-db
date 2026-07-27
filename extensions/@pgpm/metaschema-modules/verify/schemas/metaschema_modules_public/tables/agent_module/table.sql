-- Verify schemas/metaschema_modules_public/tables/agent_module/table on pg

SELECT id, database_id
FROM metaschema_modules_public.agent_module
WHERE FALSE;
