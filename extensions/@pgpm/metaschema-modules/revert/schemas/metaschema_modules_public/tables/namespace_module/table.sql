-- Revert schemas/metaschema_modules_public/tables/namespace_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.namespace_module;

COMMIT;
