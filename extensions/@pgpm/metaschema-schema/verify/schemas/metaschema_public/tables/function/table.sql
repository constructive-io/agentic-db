-- Verify schemas/metaschema_public/tables/function/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.function');

ROLLBACK;
