-- Revert schemas/metaschema_modules_public/tables/hierarchy_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.hierarchy_module;

COMMIT;
