-- Revert schemas/services_public/tables/sites/table from pg

BEGIN;

DROP TABLE services_public.sites;

COMMIT;
