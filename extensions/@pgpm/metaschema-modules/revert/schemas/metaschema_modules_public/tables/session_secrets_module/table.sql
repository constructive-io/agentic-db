-- Revert schemas/metaschema_modules_public/tables/session_secrets_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.session_secrets_module;

COMMIT;
