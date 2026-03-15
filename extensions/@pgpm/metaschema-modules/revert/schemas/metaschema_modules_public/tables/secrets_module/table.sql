-- Revert schemas/metaschema_modules_public/tables/secrets_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.secrets_module;

COMMIT;
