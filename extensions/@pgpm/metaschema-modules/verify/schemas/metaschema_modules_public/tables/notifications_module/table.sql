-- Verify schemas/metaschema_modules_public/tables/notifications_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.notifications_module');

ROLLBACK;
