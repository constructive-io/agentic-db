-- Verify schemas/metaschema_modules_public/tables/inference_log_module/constraints/one_platform_scope on pg

BEGIN;

SELECT 1/count(*)
FROM pg_indexes
WHERE schemaname = 'metaschema_modules_public'
  AND indexname = 'inference_log_module_one_platform_scope';

ROLLBACK;
