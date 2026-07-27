-- Verify schemas/metaschema_modules_public/tables/db_usage_module/constraints/one_platform_scope on pg

BEGIN;

SELECT 1/count(*)
FROM pg_indexes
WHERE schemaname = 'metaschema_modules_public'
  AND indexname = 'db_usage_module_one_platform_scope';

ROLLBACK;
