-- Verify schemas/metaschema_modules_public/tables/rls_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.rls_module');

ROLLBACK;
