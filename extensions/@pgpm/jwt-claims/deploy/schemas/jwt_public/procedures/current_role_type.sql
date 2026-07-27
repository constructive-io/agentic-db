-- Deploy schemas/jwt_public/procedures/current_role_type to pg
-- Retrieves the current role type from JWT claims (defaults to 'user')

-- requires: schemas/jwt_public/schema

BEGIN;

-- Returns the current role type from the JWT claims
-- Defaults to 'user' for normal API requests
-- System operations (triggers, workers) set this to 'system'
CREATE FUNCTION jwt_public.current_role_type()
  RETURNS text
AS $$
DECLARE
  v_role_type text;
BEGIN
  v_role_type := current_setting('jwt.claims.role_type', TRUE);
  IF v_role_type IS NOT NULL AND v_role_type <> '' THEN
    RETURN v_role_type;
  ELSE
    RETURN 'user';
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;

COMMIT;
