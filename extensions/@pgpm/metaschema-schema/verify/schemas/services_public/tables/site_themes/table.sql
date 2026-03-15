-- Verify schemas/services_public/tables/site_themes/table on pg

BEGIN;

SELECT verify_table ('services_public.site_themes');

ROLLBACK;
