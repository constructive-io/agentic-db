-- Revert schemas/services_public/tables/cors_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.cors_settings;

COMMIT;
