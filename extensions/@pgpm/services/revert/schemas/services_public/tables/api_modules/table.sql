-- Revert schemas/services_public/tables/api_modules/table from pg

BEGIN;

DROP TABLE services_public.api_modules;

COMMIT;
