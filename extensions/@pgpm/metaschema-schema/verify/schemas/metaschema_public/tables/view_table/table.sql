-- Verify schemas/metaschema_public/tables/view_table/table on pg

BEGIN;

SELECT id, view_id, table_id, join_order
FROM metaschema_public.view_table
WHERE FALSE;

ROLLBACK;
