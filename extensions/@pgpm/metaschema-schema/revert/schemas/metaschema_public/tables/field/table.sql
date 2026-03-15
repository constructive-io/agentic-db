
BEGIN;

DROP INDEX metaschema_public.field_database_id_idx;
DROP INDEX metaschema_public.field_table_id_idx;
DROP TABLE metaschema_public.field;

COMMIT;
