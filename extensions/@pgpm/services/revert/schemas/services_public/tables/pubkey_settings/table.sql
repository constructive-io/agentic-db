-- Revert schemas/services_public/tables/pubkey_settings/table

BEGIN;

DROP TABLE IF EXISTS services_public.pubkey_settings;

COMMIT;
