-- Verify schemas/services_public/tables/apis/table on pg

BEGIN;

SELECT verify_table ('services_public.apis');

ROLLBACK;
