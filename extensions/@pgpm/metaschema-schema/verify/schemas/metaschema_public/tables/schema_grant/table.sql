-- Verify schemas/metaschema_public/tables/schema_grant/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.schema_grant');

ROLLBACK;
