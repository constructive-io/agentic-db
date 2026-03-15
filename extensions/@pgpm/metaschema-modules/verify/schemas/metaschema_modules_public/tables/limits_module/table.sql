-- Verify schemas/metaschema_modules_public/tables/limits_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.limits_module');

ROLLBACK;
