-- Deploy schemas/app_scope/procedures/platform_database_id to pg
-- requires: schemas/app_scope/schema
-- requires: metaschema-schema:schemas/metaschema_public/tables/database/table

BEGIN;

-- The platform (constructive) database id: the single metaschema_public.database
-- row with platform = true (enforced by a partial unique index; write-once).
-- Raises when none is registered — a missing platform database is an invalid
-- deployment, never a runtime NULL branch.
CREATE FUNCTION app_scope.platform_database_id()
RETURNS uuid AS $$
DECLARE
  v_database_id uuid;
BEGIN
  SELECT d.id INTO v_database_id
  FROM metaschema_public.database d
  WHERE d.platform;

  IF v_database_id IS NULL THEN
    RAISE EXCEPTION 'PLATFORM_DATABASE_NOT_REGISTERED: no metaschema_public.database row has platform = true';
  END IF;

  RETURN v_database_id;
END;
$$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

COMMENT ON FUNCTION app_scope.platform_database_id() IS
'Id of the platform (constructive) database: the singleton metaschema_public.database row with platform = true. Raises PLATFORM_DATABASE_NOT_REGISTERED if none is flagged.';

COMMIT;
