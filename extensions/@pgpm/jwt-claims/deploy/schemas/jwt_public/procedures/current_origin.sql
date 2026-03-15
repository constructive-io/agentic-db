-- Deploy schemas/jwt_public/procedures/current_origin to pg
-- Retrieves the request origin from JWT claims

-- requires: schemas/jwt_public/schema

BEGIN;

-- Returns the request origin from the JWT claims
-- Used for CORS validation and origin-based access control
CREATE FUNCTION jwt_public.current_origin()
  RETURNS origin
AS $$
  SELECT nullif(current_setting('jwt.claims.origin', true), '')::origin;
$$
LANGUAGE 'sql' STABLE;

COMMIT;

