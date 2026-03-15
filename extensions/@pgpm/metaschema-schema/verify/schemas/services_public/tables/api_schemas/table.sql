-- Verify schemas/services_public/tables/api_schemas/table on pg

BEGIN;

SELECT verify_table ('services_public.api_schemas');

ROLLBACK;
