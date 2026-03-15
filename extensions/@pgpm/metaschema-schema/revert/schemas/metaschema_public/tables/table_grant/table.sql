-- Revert schemas/metaschema_public/tables/table_grant/table from pg

BEGIN;

DROP TABLE metaschema_public.table_grant;

COMMIT;
