-- Verify schemas/metaschema_public/tables/default_privilege/table on pg

BEGIN;

SELECT id, database_id, schema_id, object_type, privilege, grantee_name, is_grant
FROM metaschema_public.default_privilege
WHERE FALSE;

ROLLBACK;
