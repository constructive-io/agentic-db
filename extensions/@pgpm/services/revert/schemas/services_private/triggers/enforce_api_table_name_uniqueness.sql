-- Revert schemas/services_private/triggers/enforce_api_table_name_uniqueness

BEGIN;

DROP TRIGGER IF EXISTS _000003_enforce_api_table_name_uniqueness_update ON metaschema_public.table;
DROP TRIGGER IF EXISTS _000003_enforce_api_table_name_uniqueness ON metaschema_public.table;
DROP FUNCTION IF EXISTS services_private.tg_enforce_api_table_name_uniqueness();

COMMIT;
