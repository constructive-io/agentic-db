-- Verify schemas/metaschema_public/tables/index/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.index');

ROLLBACK;
