-- Revert schemas/metaschema_modules_public/tables/app_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.app_module;

COMMIT;
