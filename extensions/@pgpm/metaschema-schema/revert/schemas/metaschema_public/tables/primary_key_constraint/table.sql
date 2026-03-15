-- Revert schemas/metaschema_public/tables/primary_key_constraint/table from pg

BEGIN;

DROP TABLE metaschema_public.primary_key_constraint;

COMMIT;
