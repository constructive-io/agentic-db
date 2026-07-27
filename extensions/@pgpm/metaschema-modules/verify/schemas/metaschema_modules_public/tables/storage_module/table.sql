-- Verify schemas/metaschema_modules_public/tables/storage_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.storage_module');

ROLLBACK;
