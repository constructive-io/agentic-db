-- Revert schemas/metaschema_modules_public/tables/notifications_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.notifications_module;

COMMIT;
