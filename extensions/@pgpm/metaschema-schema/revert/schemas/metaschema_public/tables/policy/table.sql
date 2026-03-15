-- Revert schemas/metaschema_public/tables/policy/table from pg

BEGIN;

DROP TABLE metaschema_public.policy;

COMMIT;
