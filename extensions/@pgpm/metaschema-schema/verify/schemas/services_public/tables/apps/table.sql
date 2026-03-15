-- Verify schemas/services_public/tables/apps/table on pg

BEGIN;

SELECT verify_table ('services_public.apps');

ROLLBACK;
