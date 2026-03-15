-- Verify schemas/metaschema_modules_public/tables/phone_numbers_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.phone_numbers_module');

ROLLBACK;
