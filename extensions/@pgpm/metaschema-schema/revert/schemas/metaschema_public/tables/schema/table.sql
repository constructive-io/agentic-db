-- Revert schemas/metaschema_public/tables/schema/table from pg

BEGIN;

DROP TABLE metaschema_public.schema;

COMMIT;
