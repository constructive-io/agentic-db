-- Deploy schemas/metaschema_modules_public/tables/graph_module/constraints/one_platform_scope to pg

-- requires: schemas/metaschema_modules_public/tables/graph_module/table

BEGIN;

-- At most one platform-scope graph_module per database.
CREATE UNIQUE INDEX graph_module_one_platform_scope
    ON metaschema_modules_public.graph_module (database_id)
    WHERE scope = 'platform';

COMMIT;
