-- Verify schemas/metaschema_public/tables/view_grant/table on pg

BEGIN;

SELECT id, database_id, view_id, grantee_name, privilege, with_grant_option
FROM metaschema_public.view_grant
WHERE FALSE;

ROLLBACK;
