-- Deploy schemas/metaschema_modules_public/tables/inference_log_module/constraints/one_platform_scope to pg

-- requires: schemas/metaschema_modules_public/tables/inference_log_module/table

BEGIN;

-- At most one platform-scope inference_log_module per database.
CREATE UNIQUE INDEX inference_log_module_one_platform_scope
    ON metaschema_modules_public.inference_log_module (database_id)
    WHERE scope = 'platform';

COMMIT;
