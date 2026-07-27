-- Deploy schemas/metaschema_modules_public/tables/events_module/constraints/one_platform_scope to pg

-- requires: schemas/metaschema_modules_public/tables/events_module/table

BEGIN;

-- At most one platform-scope events_module per database.
CREATE UNIQUE INDEX events_module_one_platform_scope
    ON metaschema_modules_public.events_module (database_id)
    WHERE scope = 'platform';

COMMIT;
