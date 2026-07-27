-- Revert schemas/metaschema_modules_public/tables/devices_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.devices_module;

COMMIT;
