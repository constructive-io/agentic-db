-- Deploy schemas/metaschema_public/tables/field/indexes/databases_field_uniq_names_idx to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/field/table

BEGIN;

CREATE UNIQUE INDEX databases_field_uniq_names_idx ON metaschema_public.field (
   -- strip out any _id, etc., so that if you do create one and make foreign key relation, there is no conflict
   -- only apply normalization to uuid fields (FK candidates) to avoid false collisions on text fields like current_role/current_role_id
  table_id, DECODE(MD5(LOWER(
    CASE 
      WHEN type->>'name' = 'uuid' THEN regexp_replace(name, '^(.+?)(_row_id|_id|_uuid|_fk|_pk)$', '\1', 'i')
      ELSE name
    END
  )), 'hex')
);

COMMENT ON INDEX metaschema_public.databases_field_uniq_names_idx IS
'Guards against PostGraphile/Graphile inflection collisions: a uuid FK field
(e.g. action_id) and a sibling text field (e.g. action) on the same table
inflect toward the same GraphQL property name. For uuid fields the suffix
(_row_id|_id|_uuid|_fk|_pk) is stripped before uniqueness-checking, so any
name-like text field sitting next to a uuid FK must be suffixed explicitly
(convention: use *_name, e.g. action_name, sessions_table_name).';

COMMIT;
