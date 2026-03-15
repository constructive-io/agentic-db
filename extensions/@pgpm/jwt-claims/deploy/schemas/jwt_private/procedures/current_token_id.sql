-- Deploy schemas/jwt_private/procedures/current_token_id to pg
-- Retrieves the current JWT token ID from claims (private/internal use)

-- requires: schemas/jwt_private/schema

BEGIN;

-- Returns the current JWT token UUID from the claims
-- Used for token tracking, revocation, and audit logging
CREATE FUNCTION jwt_private.current_token_id()
  RETURNS uuid
AS $$
  SELECT nullif(current_setting('jwt.claims.token_id', true), '')::uuid;
$$
LANGUAGE 'sql' STABLE;

COMMIT;

