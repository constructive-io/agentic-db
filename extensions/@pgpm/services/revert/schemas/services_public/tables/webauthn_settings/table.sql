-- Revert schemas/services_public/tables/webauthn_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.webauthn_settings;

COMMIT;
