-- Verify schemas/metaschema_public/tables/schema/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.schema');

ROLLBACK;
