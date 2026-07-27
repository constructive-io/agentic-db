-- Revert schemas/metaschema_modules_public/tables/i18n_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.i18n_module;

COMMIT;
