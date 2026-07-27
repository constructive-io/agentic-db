-- Verify schemas/metaschema_modules_public/tables/events_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.events_module');

ROLLBACK;
