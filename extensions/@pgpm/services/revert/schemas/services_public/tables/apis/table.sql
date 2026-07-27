-- Revert schemas/services_public/tables/apis/table from pg

BEGIN;

DROP TABLE services_public.apis;

COMMIT;
