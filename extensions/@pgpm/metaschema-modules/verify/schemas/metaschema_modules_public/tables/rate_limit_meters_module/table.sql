-- Verify schemas/metaschema_modules_public/tables/rate_limit_meters_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.rate_limit_meters_module');

ROLLBACK;
