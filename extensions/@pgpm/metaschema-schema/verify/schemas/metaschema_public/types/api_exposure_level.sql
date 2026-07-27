-- Verify schemas/metaschema_public/types/api_exposure_level on pg

BEGIN;

SELECT 'exposable'::metaschema_public.api_exposure_level;
SELECT 'internal_only'::metaschema_public.api_exposure_level;
SELECT 'never_expose'::metaschema_public.api_exposure_level;

ROLLBACK;
