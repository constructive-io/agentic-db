-- Verify schemas/services_public/tables/site_metadata/table on pg

BEGIN;

SELECT verify_table ('services_public.site_metadata');

ROLLBACK;
