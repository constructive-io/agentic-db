-- Revert schemas/metaschema_modules_public/tables/rate_limits_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.rate_limits_module;

COMMIT;
