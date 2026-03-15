-- Revert schemas/services_public/tables/site_themes/table from pg

BEGIN;

DROP TABLE services_public.site_themes;

COMMIT;
