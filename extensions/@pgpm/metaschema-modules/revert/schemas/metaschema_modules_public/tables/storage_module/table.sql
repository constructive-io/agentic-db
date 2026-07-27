-- Revert schemas/metaschema_modules_public/tables/storage_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.storage_module;

COMMIT;
