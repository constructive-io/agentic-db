-- Revert schemas/metaschema_modules_public/tables/user_credentials_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.user_credentials_module;

COMMIT;
