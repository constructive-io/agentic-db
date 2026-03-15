-- Deploy schemas/ctx/procedures/uagent to pg
-- Retrieves the current user's agent string from JWT claims

-- requires: schemas/ctx/schema

BEGIN;

-- Returns the current user agent string from the JWT claims
-- This is a shorthand for jwt_public.current_user_agent()
CREATE FUNCTION ctx.uagent()
  RETURNS text
AS $$
  SELECT nullif(current_setting('jwt.claims.user_agent', true), '');
$$
LANGUAGE 'sql' STABLE;

COMMIT;

