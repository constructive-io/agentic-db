-- Verify schemas/metaschema_modules_public/tables/user_credentials_module/table on pg

BEGIN;

SELECT verify_table('metaschema_modules_public.user_credentials_module');

ROLLBACK;
