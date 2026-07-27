-- Verify schemas/metaschema_modules_public/tables/realtime_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.realtime_module');

ROLLBACK;
