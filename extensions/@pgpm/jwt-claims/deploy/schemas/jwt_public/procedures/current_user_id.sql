-- Deploy schemas/jwt_public/procedures/current_user_id to pg
-- Retrieves the current user's ID from JWT claims with validation

-- requires: schemas/jwt_public/schema

BEGIN;

-- Returns the current user's UUID from the JWT claims
-- Includes error handling for invalid UUID values
-- Returns NULL if the claim is not set or invalid
CREATE FUNCTION jwt_public.current_user_id()
  RETURNS uuid
AS $$
DECLARE
  v_identifier_id uuid;
BEGIN
  IF current_setting('jwt.claims.user_id', TRUE)
    IS NOT NULL THEN
    BEGIN
      v_identifier_id = current_setting('jwt.claims.user_id', TRUE)::uuid;
    EXCEPTION
      WHEN OTHERS THEN
      RAISE NOTICE 'Invalid UUID value';
    RETURN NULL;
    END;
    RETURN v_identifier_id;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;

COMMIT;
