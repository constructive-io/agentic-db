-- Revert schemas/metaschema_modules_public/tables/function_invocation_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.function_invocation_module;

COMMIT;
