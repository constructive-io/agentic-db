-- Revert schemas/metaschema_modules_public/tables/profiles_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.profiles_module;

COMMIT;
