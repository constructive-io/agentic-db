-- Verify schemas/metaschema_public/tables/partition/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.partition');

ROLLBACK;
