-- Revert schemas/metaschema_modules_public/tables/permissions_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.permissions_module;

COMMIT;
