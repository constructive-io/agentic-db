-- Revert schemas/metaschema_public/tables/trigger/table from pg

BEGIN;

DROP TABLE metaschema_public.trigger;

COMMIT;
