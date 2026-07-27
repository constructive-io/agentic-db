-- Revert schemas/metaschema_modules_public/tables/compute_log_module/constraints/one_platform_scope from pg

BEGIN;

DROP INDEX metaschema_modules_public.compute_log_module_one_platform_scope;

COMMIT;
