-- Deploy schemas/jwt_public/procedures/current_ip_address to pg
-- Retrieves the client's IP address from JWT claims with validation

-- requires: schemas/jwt_public/schema

BEGIN;

-- Returns the client's IP address from the JWT claims
-- Includes error handling for invalid IP address values
-- Returns NULL if the claim is not set or invalid
CREATE FUNCTION jwt_public.current_ip_address()
  RETURNS inet
AS $$
DECLARE
  v_ip_addr inet;
BEGIN
  IF current_setting('jwt.claims.ip_address', TRUE)
    IS NOT NULL THEN
    BEGIN
      v_ip_addr = trim(current_setting('jwt.claims.ip_address', TRUE))::inet;
    EXCEPTION
      WHEN OTHERS THEN
      RAISE NOTICE 'Invalid IP';
    RETURN NULL;
    END;
    RETURN v_ip_addr;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;

COMMIT;
