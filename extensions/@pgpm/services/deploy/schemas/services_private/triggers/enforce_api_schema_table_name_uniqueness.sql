-- Deploy schemas/services_private/triggers/enforce_api_schema_table_name_uniqueness to pg

-- requires: schemas/services_private/schema
-- requires: schemas/services_public/tables/api_schemas/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/indexes/databases_table_unique_name_idx

BEGIN;

-- When linking a schema to an API, check that none of its tables conflict
-- (by plural-hash) with tables already exposed through that API's other schemas.
CREATE FUNCTION services_private.tg_enforce_api_schema_table_name_uniqueness()
RETURNS TRIGGER AS $$
DECLARE
  conflicting_new_table text;
  conflicting_existing_table text;
BEGIN
  -- Find any table name collision between the newly linked schema
  -- and any schema already linked to the same API
  SELECT new_t.name, existing_t.name
  INTO conflicting_new_table, conflicting_existing_table
  FROM metaschema_public.table AS new_t
  JOIN services_public.api_schemas AS existing_link
    ON existing_link.api_id = NEW.api_id
    AND existing_link.schema_id IS DISTINCT FROM NEW.schema_id
  JOIN metaschema_public.table AS existing_t
    ON existing_t.schema_id = existing_link.schema_id
    AND metaschema_private.table_name_hash(existing_t.name) = metaschema_private.table_name_hash(new_t.name)
  WHERE new_t.schema_id = NEW.schema_id
  LIMIT 1;

  IF conflicting_new_table IS NOT NULL THEN
    RAISE EXCEPTION 'Cannot link schema to API: table "%" conflicts with existing table "%" already exposed in this API. Table names must be unique (by plural form) across all schemas within the same API.',
      conflicting_new_table, conflicting_existing_table;
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _000001_enforce_api_schema_table_name_uniqueness
BEFORE INSERT ON services_public.api_schemas
FOR EACH ROW
EXECUTE FUNCTION services_private.tg_enforce_api_schema_table_name_uniqueness();

COMMIT;
