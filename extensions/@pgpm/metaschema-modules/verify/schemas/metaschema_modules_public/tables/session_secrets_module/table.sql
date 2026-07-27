-- Verify schemas/metaschema_modules_public/tables/session_secrets_module/table on pg

SELECT id, database_id
FROM metaschema_modules_public.session_secrets_module
WHERE FALSE;
