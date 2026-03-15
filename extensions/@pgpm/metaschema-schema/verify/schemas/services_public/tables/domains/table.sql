-- Verify schemas/services_public/tables/domains/table on pg

BEGIN;

SELECT verify_table ('services_public.domains');

ROLLBACK;
