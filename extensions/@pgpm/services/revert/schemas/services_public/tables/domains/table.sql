-- Revert schemas/services_public/tables/domains/table from pg

BEGIN;

DROP TABLE services_public.domains;

COMMIT;
