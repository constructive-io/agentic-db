-- Revert schemas/metaschema_modules_public/tables/webauthn_credentials_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.webauthn_credentials_module;

COMMIT;
