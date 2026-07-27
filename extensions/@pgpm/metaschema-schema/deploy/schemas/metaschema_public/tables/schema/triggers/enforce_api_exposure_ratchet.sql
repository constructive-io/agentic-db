-- Deploy schemas/metaschema_public/tables/schema/triggers/enforce_api_exposure_ratchet to pg

-- requires: schemas/metaschema_public/tables/schema/table

BEGIN;

-- never_expose is a one-way ratchet: once set, it cannot be changed via the app.
-- Loosening internal_only → exposable is governed by introspection-layer permissions.
CREATE FUNCTION metaschema_public.tg_enforce_api_exposure_ratchet()
RETURNS TRIGGER AS $$
BEGIN
  IF OLD.api_exposure = 'never_expose' THEN
    RAISE EXCEPTION 'Cannot change api_exposure from ''never_expose'' on schema "%". This level is permanent and can only be removed via a direct database migration.',
      OLD.name
    USING ERRCODE = 'check_violation';
  END IF;

  RETURN NEW;
END;
$$
LANGUAGE plpgsql STABLE;

CREATE TRIGGER _000003_enforce_api_exposure_ratchet
BEFORE UPDATE ON metaschema_public.schema
FOR EACH ROW
WHEN (NEW.api_exposure IS DISTINCT FROM OLD.api_exposure)
EXECUTE FUNCTION metaschema_public.tg_enforce_api_exposure_ratchet();

COMMIT;
