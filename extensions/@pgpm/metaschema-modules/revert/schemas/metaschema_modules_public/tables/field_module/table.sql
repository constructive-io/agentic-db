-- Revert schemas/metaschema_modules_public/tables/field_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.field_module;

COMMIT;
