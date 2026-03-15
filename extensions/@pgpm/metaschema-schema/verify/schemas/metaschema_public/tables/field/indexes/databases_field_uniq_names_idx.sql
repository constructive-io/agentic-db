-- Verify schemas/metaschema_public/tables/field/indexes/databases_field_uniq_names_idx  on pg

BEGIN;

SELECT verify_index ('metaschema_public.field', 'databases_field_uniq_names_idx');

ROLLBACK;
