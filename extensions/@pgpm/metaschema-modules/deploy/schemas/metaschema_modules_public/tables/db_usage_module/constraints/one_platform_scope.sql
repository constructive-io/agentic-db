-- Deploy schemas/metaschema_modules_public/tables/db_usage_module/constraints/one_platform_scope to pg

-- requires: schemas/metaschema_modules_public/tables/db_usage_module/table

BEGIN;

-- At most one platform-scope db_usage_module per database.
CREATE UNIQUE INDEX db_usage_module_one_platform_scope
    ON metaschema_modules_public.db_usage_module (database_id)
    WHERE scope = 'platform';

COMMIT;
