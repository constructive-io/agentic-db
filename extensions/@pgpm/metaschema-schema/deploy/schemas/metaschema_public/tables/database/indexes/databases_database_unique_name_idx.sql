-- Deploy schemas/metaschema_public/tables/database/indexes/databases_database_unique_name_idx to pg
-- requires: schemas/metaschema_private/schema
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE FUNCTION metaschema_private.database_name_hash (name text)
  RETURNS bytea
  AS $BODY$
  SELECT
    DECODE(MD5(LOWER(inflection.plural (name))), 'hex');
$BODY$
LANGUAGE sql
IMMUTABLE;

CREATE UNIQUE INDEX databases_database_unique_name_idx ON metaschema_public.database (owner_id, metaschema_private.database_name_hash (name));

COMMIT;

