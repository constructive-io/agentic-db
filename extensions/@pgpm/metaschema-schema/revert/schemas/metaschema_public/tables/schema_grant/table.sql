-- Revert schemas/metaschema_public/tables/schema_grant/table from pg

BEGIN;

DROP TABLE metaschema_public.schema_grant;

COMMIT;
