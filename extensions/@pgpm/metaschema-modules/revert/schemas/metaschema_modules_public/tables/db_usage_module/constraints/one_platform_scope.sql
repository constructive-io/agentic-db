-- Revert schemas/metaschema_modules_public/tables/db_usage_module/constraints/one_platform_scope from pg

BEGIN;

DROP INDEX metaschema_modules_public.db_usage_module_one_platform_scope;

COMMIT;
