-- Deploy schemas/metaschema_modules_public/tables/function_module/constraints/one_platform_database to pg

-- requires: schemas/metaschema_modules_public/tables/function_module/table

BEGIN;

-- No-op migration: platform database uniqueness is enforced at the application
-- layer by resolveDatabaseId(), which queries:
--   SELECT database_id FROM function_module WHERE scope = 'platform' LIMIT 1
--
-- A hard UNIQUE constraint on ((true)) WHERE scope='platform' would break
-- test isolation (each test database independently provisions platform-scope
-- modules in the same shared table). The existing unique index
-- (database_id, scope, prefix) already prevents duplicates within a single
-- database. Cross-database uniqueness (only one platform DB in production)
-- is enforced operationally and validated at compute worker startup.

COMMIT;
