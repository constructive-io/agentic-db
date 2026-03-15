-- Deploy schemas/jwt_public/procedures/current_user_agent to pg
-- Retrieves the client's user agent string from JWT claims with validation

-- requires: schemas/jwt_public/schema

BEGIN;

-- Returns the client's user agent string from the JWT claims
-- Includes error handling for invalid values
-- Returns NULL if the claim is not set or invalid
CREATE FUNCTION jwt_public.current_user_agent()
  RETURNS text
AS $$
DECLARE
  v_uagent text;
BEGIN
  IF current_setting('jwt.claims.user_agent', TRUE)
    IS NOT NULL THEN
    BEGIN
      v_uagent = current_setting('jwt.claims.user_agent', TRUE);
    EXCEPTION
      WHEN OTHERS THEN
      RAISE NOTICE 'Invalid UserAgent';
    RETURN NULL;
    END;
    RETURN v_uagent;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;

COMMIT;
