-- Revert schemas/metaschema_modules_public/tables/user_settings_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.user_settings_module;

COMMIT;
