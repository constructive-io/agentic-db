-- Revert schemas/metaschema_public/tables/default_privilege/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_public.default_privilege;

COMMIT;
