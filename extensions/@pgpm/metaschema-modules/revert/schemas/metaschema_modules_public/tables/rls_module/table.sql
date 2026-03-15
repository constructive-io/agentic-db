-- Revert schemas/metaschema_modules_public/tables/rls_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.rls_module;

COMMIT;
