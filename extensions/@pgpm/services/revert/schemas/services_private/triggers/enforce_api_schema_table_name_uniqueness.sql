-- Revert schemas/services_private/triggers/enforce_api_schema_table_name_uniqueness

BEGIN;

DROP TRIGGER IF EXISTS _000001_enforce_api_schema_table_name_uniqueness ON services_public.api_schemas;
DROP FUNCTION IF EXISTS services_private.tg_enforce_api_schema_table_name_uniqueness();

COMMIT;
