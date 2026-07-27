-- Verify schemas/metaschema_modules_public/tables/events_module/constraints/one_platform_scope on pg

BEGIN;

SELECT 1/count(*)
FROM pg_indexes
WHERE schemaname = 'metaschema_modules_public'
  AND indexname = 'events_module_one_platform_scope';

ROLLBACK;
