-- Deploy schemas/metaschema_public/tables/table/indexes/databases_table_unique_name_idx to pg
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_private/schema
-- requires: schemas/metaschema_public/tables/table/table

BEGIN;

CREATE FUNCTION metaschema_private.table_name_hash (name text)
  RETURNS bytea
  AS $BODY$
  SELECT
    DECODE(MD5(LOWER(inflection.plural (name))), 'hex');
$BODY$
LANGUAGE sql
IMMUTABLE;

CREATE UNIQUE INDEX databases_table_unique_name_idx ON metaschema_public.table (database_id, schema_id, metaschema_private.table_name_hash (name));

COMMIT;

