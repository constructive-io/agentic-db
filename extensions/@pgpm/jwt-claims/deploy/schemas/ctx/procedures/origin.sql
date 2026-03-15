-- Deploy schemas/ctx/procedures/origin to pg
-- Retrieves the request origin from JWT claims

-- requires: schemas/ctx/schema

BEGIN;

-- Returns the request origin from the JWT claims
-- Used for CORS validation and origin-based access control
CREATE FUNCTION ctx.origin()
  RETURNS origin
AS $$
  SELECT nullif(current_setting('jwt.claims.origin', true), '')::origin;
$$
LANGUAGE 'sql' STABLE;

COMMIT;

