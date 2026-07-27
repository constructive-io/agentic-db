-- Verify schemas/metaschema_public/tables/composite_type/table on pg

BEGIN;

SELECT verify_table ('metaschema_public.composite_type');

ROLLBACK;
