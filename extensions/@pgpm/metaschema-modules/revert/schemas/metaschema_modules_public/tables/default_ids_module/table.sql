-- Revert schemas/metaschema_modules_public/tables/default_ids_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.default_ids_module;

COMMIT;
