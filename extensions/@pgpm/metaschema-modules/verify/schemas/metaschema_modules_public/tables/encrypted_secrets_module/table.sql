-- Verify schemas/metaschema_modules_public/tables/encrypted_secrets_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.encrypted_secrets_module');

ROLLBACK;
