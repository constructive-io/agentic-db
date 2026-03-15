-- Verify schemas/services_public/tables/sites/table on pg

BEGIN;

SELECT verify_table ('services_public.sites');

ROLLBACK;
