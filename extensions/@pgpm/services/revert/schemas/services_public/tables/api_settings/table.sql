-- Revert schemas/services_public/tables/api_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.api_settings;

COMMIT;
