-- Verify schemas/services_private/triggers/enforce_api_exposure

BEGIN;

SELECT has_function_privilege(
  'services_private.tg_enforce_api_exposure()',
  'execute'
);

ROLLBACK;
