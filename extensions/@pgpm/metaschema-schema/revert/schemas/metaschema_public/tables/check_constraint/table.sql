-- Revert schemas/metaschema_public/tables/check_constraint/table from pg

BEGIN;

DROP TABLE metaschema_public.check_constraint;

COMMIT;
