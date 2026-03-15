-- Verify schemas/metaschema_modules_public/tables/sessions_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.sessions_module');

ROLLBACK;
