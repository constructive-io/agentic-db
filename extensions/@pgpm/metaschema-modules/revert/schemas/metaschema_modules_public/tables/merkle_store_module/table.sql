-- Revert schemas/metaschema_modules_public/tables/merkle_store_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.merkle_store_module;

COMMIT;
