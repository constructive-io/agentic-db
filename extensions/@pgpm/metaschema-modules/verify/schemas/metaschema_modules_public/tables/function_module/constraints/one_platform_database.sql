-- Verify schemas/metaschema_modules_public/tables/function_module/constraints/one_platform_database on pg

BEGIN;

-- No-op verification: the migration is purely documentation.
-- Verify by confirming the function_module table exists.
SELECT 1 FROM pg_tables
WHERE tablename = 'function_module'
  AND schemaname = 'metaschema_modules_public';

ROLLBACK;
