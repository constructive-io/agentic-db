-- Revert schemas/metaschema_public/tables/exclusion_constraint/table from pg

BEGIN;

DROP TABLE metaschema_public.exclusion_constraint;

COMMIT;
