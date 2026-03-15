-- Verify schemas/metaschema_modules_public/tables/crypto_addresses_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.crypto_addresses_module');

ROLLBACK;
