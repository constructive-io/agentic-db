-- Revert schemas/metaschema_modules_public/tables/db_preset_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.db_preset_module CASCADE;

COMMIT;
