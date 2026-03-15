-- Verify schemas/metaschema_modules_public/tables/secrets_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.secrets_module');

ROLLBACK;
