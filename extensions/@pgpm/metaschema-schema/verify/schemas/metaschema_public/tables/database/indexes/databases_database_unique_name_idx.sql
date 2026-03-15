
BEGIN;

SELECT verify_index ('metaschema_public.database', 'databases_database_unique_name_idx');

ROLLBACK;
