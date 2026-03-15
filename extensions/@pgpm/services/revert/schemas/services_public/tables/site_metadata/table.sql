-- Revert schemas/services_public/tables/site_metadata/table from pg

BEGIN;

DROP TABLE services_public.site_metadata;

COMMIT;
