-- Revert schemas/metaschema_modules_public/tables/function_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.function_module;

COMMIT;
