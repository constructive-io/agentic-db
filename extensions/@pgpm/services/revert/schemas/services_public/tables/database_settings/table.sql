-- Revert schemas/services_public/tables/database_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.database_settings;

COMMIT;
