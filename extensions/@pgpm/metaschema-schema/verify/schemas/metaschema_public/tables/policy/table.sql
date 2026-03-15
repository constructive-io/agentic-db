-- Verify schemas/metaschema_public/tables/policy/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.policy');

ROLLBACK;
