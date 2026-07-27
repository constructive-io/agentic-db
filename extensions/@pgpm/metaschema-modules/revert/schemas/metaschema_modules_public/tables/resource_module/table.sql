-- Revert schemas/metaschema_modules_public/tables/resource_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.resource_module;

COMMIT;
