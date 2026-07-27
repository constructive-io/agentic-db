-- Verify schemas/metaschema_modules_public/tables/compute_log_module/constraints/one_platform_scope on pg

BEGIN;

SELECT 1/count(*)
FROM pg_indexes
WHERE schemaname = 'metaschema_modules_public'
  AND indexname = 'compute_log_module_one_platform_scope';

ROLLBACK;
