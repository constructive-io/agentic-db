-- Verify schemas/metaschema_modules_public/tables/membership_types_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.membership_types_module');

ROLLBACK;
