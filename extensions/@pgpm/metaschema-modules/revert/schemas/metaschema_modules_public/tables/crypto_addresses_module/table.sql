-- Revert schemas/metaschema_modules_public/tables/crypto_addresses_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.crypto_addresses_module;

COMMIT;
