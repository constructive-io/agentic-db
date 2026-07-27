-- Verify schemas/metaschema_public/tables/schema/triggers/enforce_api_exposure_ratchet on pg

BEGIN;

SELECT has_function_privilege(
  'metaschema_public.tg_enforce_api_exposure_ratchet()',
  'execute'
);

ROLLBACK;
