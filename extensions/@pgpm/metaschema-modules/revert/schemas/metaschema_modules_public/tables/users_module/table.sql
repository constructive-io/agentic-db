-- Revert schemas/metaschema_modules_public/tables/users_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.users_module;

COMMIT;
