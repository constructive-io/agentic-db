-- Verify schemas/metaschema_public/tables/foreign_key_constraint/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.foreign_key_constraint');

ROLLBACK;
