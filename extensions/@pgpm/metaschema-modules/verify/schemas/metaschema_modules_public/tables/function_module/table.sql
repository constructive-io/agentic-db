-- Verify schemas/metaschema_modules_public/tables/function_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.function_module');

ROLLBACK;
