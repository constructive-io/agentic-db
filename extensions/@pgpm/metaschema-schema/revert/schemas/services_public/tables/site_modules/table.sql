-- Revert schemas/services_public/tables/site_modules/table from pg

BEGIN;

DROP TABLE services_public.site_modules;

COMMIT;
