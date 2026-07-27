-- Revert schemas/metaschema_modules_public/tables/events_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.events_module;

COMMIT;
