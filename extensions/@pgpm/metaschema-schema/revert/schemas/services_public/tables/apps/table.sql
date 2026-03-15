-- Revert schemas/services_public/tables/apps/table from pg

BEGIN;

DROP TABLE services_public.apps;

COMMIT;
