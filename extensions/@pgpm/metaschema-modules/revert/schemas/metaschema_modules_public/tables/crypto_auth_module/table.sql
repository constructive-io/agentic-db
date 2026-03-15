-- Revert schemas/metaschema_modules_public/tables/crypto_auth_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.crypto_auth_module;

COMMIT;
