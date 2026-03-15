-- Verify schemas/metaschema_public/tables/primary_key_constraint/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.primary_key_constraint');

ROLLBACK;
