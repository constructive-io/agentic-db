-- Revert schemas/metaschema_public/tables/function/table from pg

BEGIN;

DROP TABLE metaschema_public.function;

COMMIT;
