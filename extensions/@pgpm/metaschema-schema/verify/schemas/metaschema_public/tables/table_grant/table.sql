-- Verify schemas/metaschema_public/tables/table_grant/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.table_grant');

ROLLBACK;
