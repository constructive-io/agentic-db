-- Revert schemas/metaschema_modules_public/tables/catalog_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.catalog_module;

COMMIT;
