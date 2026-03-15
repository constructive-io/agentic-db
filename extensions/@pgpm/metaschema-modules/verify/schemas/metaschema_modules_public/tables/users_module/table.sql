-- Verify schemas/metaschema_modules_public/tables/users_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.users_module');

ROLLBACK;
