-- Revert schemas/metaschema_modules_public/tables/user_auth_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.user_auth_module;

COMMIT;
