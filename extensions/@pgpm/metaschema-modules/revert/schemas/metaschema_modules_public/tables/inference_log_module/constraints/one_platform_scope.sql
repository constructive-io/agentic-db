-- Revert schemas/metaschema_modules_public/tables/inference_log_module/constraints/one_platform_scope from pg

BEGIN;

DROP INDEX metaschema_modules_public.inference_log_module_one_platform_scope;

COMMIT;
