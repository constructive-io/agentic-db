-- Revert schemas/metaschema_public/tables/composite_type/table from pg

BEGIN;

DROP TABLE metaschema_public.composite_type;

COMMIT;
