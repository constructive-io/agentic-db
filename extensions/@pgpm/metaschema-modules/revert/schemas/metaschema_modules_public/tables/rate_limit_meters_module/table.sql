-- Revert schemas/metaschema_modules_public/tables/rate_limit_meters_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.rate_limit_meters_module;

COMMIT;
