-- Revert schemas/metaschema_public/tables/trigger_function/table from pg

BEGIN;

DROP TABLE metaschema_public.trigger_function;

COMMIT;
