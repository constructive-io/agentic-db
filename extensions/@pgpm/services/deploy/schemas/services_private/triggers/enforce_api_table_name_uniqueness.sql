-- Deploy schemas/services_private/triggers/enforce_api_table_name_uniqueness to pg

-- requires: schemas/services_private/schema
-- requires: schemas/services_public/tables/api_schemas/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/table/indexes/databases_table_unique_name_idx

BEGIN;

-- Enforce that table names are unique (by plural-hash) across all schemas within each API.
-- This allows different APIs to have tables with the same name, but prevents
-- collisions within a single API where multiple schemas are exposed together.
CREATE FUNCTION services_private.tg_enforce_api_table_name_uniqueness()
RETURNS TRIGGER AS $$
DECLARE
  new_name_hash bytea;
  conflicting_api_name text;
  conflicting_table_name text;
BEGIN
  -- Compute the plural-hash of the new table name
  new_name_hash := metaschema_private.table_name_hash(NEW.name);

  -- Check if any API that includes this table's schema also includes
  -- another schema containing a table with the same name hash
  SELECT a.name, t.name
  INTO conflicting_api_name, conflicting_table_name
  FROM services_public.api_schemas AS my_api
  JOIN services_public.api_schemas AS other_api
    ON other_api.api_id = my_api.api_id
    AND other_api.schema_id IS DISTINCT FROM NEW.schema_id
  JOIN metaschema_public.table AS t
    ON t.schema_id = other_api.schema_id
    AND metaschema_private.table_name_hash(t.name) = new_name_hash
  JOIN services_public.apis AS a
    ON a.id = my_api.api_id
  WHERE my_api.schema_id = NEW.schema_id
  LIMIT 1;

  IF conflicting_api_name IS NOT NULL THEN
    RAISE EXCEPTION 'Table name "%" conflicts with existing table "%" in API "%". Table names must be unique (by plural form) across all schemas within the same API.',
      NEW.name, conflicting_table_name, conflicting_api_name;
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER _000003_enforce_api_table_name_uniqueness
BEFORE INSERT ON metaschema_public.table
FOR EACH ROW
EXECUTE FUNCTION services_private.tg_enforce_api_table_name_uniqueness();

CREATE TRIGGER _000003_enforce_api_table_name_uniqueness_update
BEFORE UPDATE ON metaschema_public.table
FOR EACH ROW
WHEN (NEW.name IS DISTINCT FROM OLD.name OR NEW.schema_id IS DISTINCT FROM OLD.schema_id)
EXECUTE FUNCTION services_private.tg_enforce_api_table_name_uniqueness();

COMMIT;
