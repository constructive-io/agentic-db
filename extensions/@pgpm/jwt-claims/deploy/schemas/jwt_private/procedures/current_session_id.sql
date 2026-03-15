-- Deploy schemas/jwt_private/procedures/current_session_id to pg
-- Retrieves the current session ID from JWT claims (private/internal use)

-- requires: schemas/jwt_private/schema

BEGIN;

-- Returns the current session UUID from the JWT claims
-- Used for session tracking, revocation, and audit logging
-- This is kept private to prevent session IDs from being exposed to the frontend
CREATE FUNCTION jwt_private.current_session_id()
  RETURNS uuid
AS $$
  SELECT nullif(current_setting('jwt.claims.session_id', true), '')::uuid;
$$
LANGUAGE 'sql' STABLE;

COMMIT;
