-- Revert schemas/metaschema_modules_public/tables/table_template_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.table_template_module;

COMMIT;
