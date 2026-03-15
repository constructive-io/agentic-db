-- Revert schemas/metaschema_modules_public/tables/denormalized_table_field/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.denormalized_table_field;

COMMIT;
