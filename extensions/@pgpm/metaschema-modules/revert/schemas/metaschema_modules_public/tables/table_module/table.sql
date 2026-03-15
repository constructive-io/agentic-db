-- Revert schemas/metaschema_modules_public/tables/table_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.table_module;

COMMIT;
