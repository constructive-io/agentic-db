-- Verify schemas/metaschema_modules_public/tables/webhook_module/table on pg

BEGIN;

SELECT id, database_id, scope
FROM metaschema_modules_public.webhook_module
WHERE false;

ROLLBACK;
