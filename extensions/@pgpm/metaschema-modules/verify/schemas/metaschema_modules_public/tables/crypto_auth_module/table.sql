-- Verify schemas/metaschema_modules_public/tables/crypto_auth_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.crypto_auth_module');

ROLLBACK;
