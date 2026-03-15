-- Revert schemas/metaschema_public/tables/index/table from pg

BEGIN;

DROP TABLE metaschema_public.index;

COMMIT;
