-- Deploy schemas/ctx/procedures/ip_address to pg
-- Retrieves the client's IP address from JWT claims

-- requires: schemas/ctx/schema

BEGIN;

-- Returns the client's IP address from the JWT claims
-- Useful for logging, rate limiting, and geo-based features
CREATE FUNCTION ctx.ip_address()
  RETURNS inet
AS $$
  SELECT nullif(current_setting('jwt.claims.ip_address', true), '')::inet;
$$
LANGUAGE 'sql' STABLE;

COMMIT;

