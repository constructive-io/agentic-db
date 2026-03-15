-- Revert schemas/metaschema_modules_public/tables/limits_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.limits_module;

COMMIT;
