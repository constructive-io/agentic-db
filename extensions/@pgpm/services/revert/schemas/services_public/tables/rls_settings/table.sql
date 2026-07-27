-- Revert schemas/services_public/tables/rls_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.rls_settings;

COMMIT;
