-- Deploy schemas/services_private/triggers/enforce_api_exposure to pg

-- requires: schemas/services_private/schema
-- requires: schemas/services_public/tables/api_schemas/table
-- requires: metaschema-schema:schemas/metaschema_public/tables/schema/table

BEGIN;

-- Block schemas marked 'never_expose' or 'internal_only' from being linked to a public API.
-- Private APIs (is_public=false) are internal server-side and may contain sensitive schemas.
CREATE FUNCTION services_private.tg_enforce_api_exposure()
RETURNS TRIGGER AS $$
DECLARE
  schema_name text;
  exposure metaschema_public.api_exposure_level;
  api_is_public boolean;
BEGIN
  -- Check if the target API is public
  SELECT a.is_public INTO api_is_public
  FROM services_public.apis AS a
  WHERE a.id = NEW.api_id;

  -- Private APIs can contain any schema — skip enforcement
  IF api_is_public IS NOT TRUE THEN
    RETURN NEW;
  END IF;

  SELECT s.name, s.api_exposure
  INTO schema_name, exposure
  FROM metaschema_public.schema AS s
  WHERE s.id = NEW.schema_id;

  IF exposure = 'never_expose' THEN
    RAISE EXCEPTION 'Cannot add schema "%" to a public API: schema is marked never_expose and can never be exposed through a public API.',
      schema_name
    USING ERRCODE = 'check_violation';
  END IF;

  IF exposure = 'internal_only' THEN
    RAISE EXCEPTION 'Cannot add schema "%" to a public API: schema is marked internal_only. A platform administrator must change the api_exposure level before this schema can be exposed.',
      schema_name
    USING ERRCODE = 'check_violation';
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql STABLE;

CREATE TRIGGER _000002_enforce_api_exposure
BEFORE INSERT ON services_public.api_schemas
FOR EACH ROW
EXECUTE FUNCTION services_private.tg_enforce_api_exposure();

COMMIT;
