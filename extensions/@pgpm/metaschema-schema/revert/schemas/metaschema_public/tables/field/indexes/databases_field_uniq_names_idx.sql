-- Revert schemas/metaschema_public/tables/field/indexes/databases_field_uniq_names_idx from pg

BEGIN;

DROP INDEX metaschema_public.databases_field_uniq_names_idx;

COMMIT;
