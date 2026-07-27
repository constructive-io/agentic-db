-- Revert schemas/services_public/tables/api_schemas/table from pg

BEGIN;

DROP TABLE services_public.api_schemas;

COMMIT;
