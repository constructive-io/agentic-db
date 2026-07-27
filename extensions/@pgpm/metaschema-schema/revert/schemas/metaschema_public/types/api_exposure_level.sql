-- Revert schemas/metaschema_public/types/api_exposure_level from pg

BEGIN;

DROP TYPE metaschema_public.api_exposure_level;

COMMIT;
