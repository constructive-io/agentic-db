-- Revert schemas/metaschema_modules_public/tables/levels_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.levels_module;

COMMIT;
