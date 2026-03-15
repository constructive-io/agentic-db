-- Verify schemas/metaschema_public/tables/unique_constraint/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.unique_constraint');

ROLLBACK;
