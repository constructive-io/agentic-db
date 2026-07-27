-- Revert schemas/metaschema_public/tables/partition/table from pg

BEGIN;

DROP TABLE metaschema_public.partition;

COMMIT;
