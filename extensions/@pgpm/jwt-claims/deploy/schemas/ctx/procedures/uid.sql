-- Deploy schemas/ctx/procedures/uid to pg
-- Retrieves the current user's ID from JWT claims

-- requires: schemas/ctx/schema

BEGIN;

-- Returns the current user's UUID from the JWT claims
-- This is a shorthand for jwt_public.current_user_id()
CREATE FUNCTION ctx.uid()
  RETURNS uuid
AS $$
  SELECT nullif(current_setting('jwt.claims.user_id', true), '')::uuid;
$$
LANGUAGE 'sql' STABLE;

COMMIT;

