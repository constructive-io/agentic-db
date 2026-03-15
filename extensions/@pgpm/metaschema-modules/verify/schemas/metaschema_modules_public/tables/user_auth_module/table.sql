-- Verify schemas/metaschema_modules_public/tables/user_auth_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.user_auth_module');

ROLLBACK;
