-- Revert schemas/metaschema_modules_public/tables/config_secrets_user_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.config_secrets_user_module;

COMMIT;
