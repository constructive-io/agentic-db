-- Revert schemas/metaschema_modules_public/tables/realtime_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.realtime_module;

COMMIT;
