-- Revert schemas/metaschema_modules_public/tables/function_deployment_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.function_deployment_module;

COMMIT;
