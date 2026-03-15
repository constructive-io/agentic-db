-- Revert schemas/metaschema_public/tables/unique_constraint/table from pg

BEGIN;

DROP TABLE metaschema_public.unique_constraint;

COMMIT;
