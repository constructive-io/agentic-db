
BEGIN;

SELECT verify_index ('metaschema_public.table', 'databases_table_unique_name_idx');

ROLLBACK;
