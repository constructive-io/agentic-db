-- Verify schemas/metaschema_modules_public/tables/levels_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.levels_module');

ROLLBACK;
