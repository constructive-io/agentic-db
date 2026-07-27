-- Revert schemas/metaschema_modules_public/tables/database_settings_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.database_settings_module;

COMMIT;
