-- Verify schemas/services_public/tables/site_modules/table on pg

BEGIN;

SELECT verify_table ('services_public.site_modules');

ROLLBACK;
