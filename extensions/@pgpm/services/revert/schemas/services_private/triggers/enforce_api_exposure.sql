-- Revert schemas/services_private/triggers/enforce_api_exposure

BEGIN;

DROP TRIGGER IF EXISTS _000002_enforce_api_exposure ON services_public.api_schemas;
DROP FUNCTION IF EXISTS services_private.tg_enforce_api_exposure();

COMMIT;
