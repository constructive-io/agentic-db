-- Verify schemas/metaschema_modules_public/tables/emails_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.emails_module');

ROLLBACK;
