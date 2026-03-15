-- Verify schemas/metaschema_modules_public/tables/memberships_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.memberships_module');

ROLLBACK;
