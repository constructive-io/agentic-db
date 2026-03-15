-- Verify schemas/services_public/tables/api_modules/table on pg

BEGIN;

SELECT verify_table ('services_public.api_modules');

ROLLBACK;
