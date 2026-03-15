-- Revert schemas/metaschema_public/tables/view_table/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.view_table;

COMMIT;
