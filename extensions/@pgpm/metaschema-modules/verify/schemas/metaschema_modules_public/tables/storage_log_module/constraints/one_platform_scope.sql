-- Verify schemas/metaschema_modules_public/tables/storage_log_module/constraints/one_platform_scope on pg

BEGIN;

SELECT 1/count(*)
FROM pg_indexes
WHERE schemaname = 'metaschema_modules_public'
  AND indexname = 'storage_log_module_one_platform_scope';

ROLLBACK;
