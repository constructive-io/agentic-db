-- Verify schemas/metaschema_modules_public/tables/permissions_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.permissions_module');

ROLLBACK;
