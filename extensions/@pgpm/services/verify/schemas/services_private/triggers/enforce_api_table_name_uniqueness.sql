-- Verify schemas/services_private/triggers/enforce_api_table_name_uniqueness

BEGIN;

SELECT has_function_privilege(
  'services_private.tg_enforce_api_table_name_uniqueness()',
  'execute'
);

ROLLBACK;
