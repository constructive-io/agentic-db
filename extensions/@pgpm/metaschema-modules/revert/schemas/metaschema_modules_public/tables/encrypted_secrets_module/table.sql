-- Revert schemas/metaschema_modules_public/tables/encrypted_secrets_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.encrypted_secrets_module;

COMMIT;
