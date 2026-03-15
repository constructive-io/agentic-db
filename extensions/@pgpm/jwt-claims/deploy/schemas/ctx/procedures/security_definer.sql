-- Deploy schemas/ctx/procedures/security_definer to pg
-- Creates functions for security definer context checks

-- requires: schemas/ctx/schema

BEGIN;

-- Creates two helper functions for security definer context:
-- ctx.security_definer() - Returns the name of the security definer user
-- ctx.is_security_definer() - Returns true if current user is the security definer
-- These are useful for RLS policies that need to bypass checks for system operations
DO $LQLMIGRATION$
  DECLARE
  BEGIN
    EXECUTE format('CREATE FUNCTION ctx.security_definer() returns text as $FUNC$
      SELECT ''%s'';
$FUNC$
LANGUAGE ''sql'';', current_user);
    EXECUTE format('CREATE FUNCTION ctx.is_security_definer() returns bool as $FUNC$
      SELECT ''%s'' = current_user;
$FUNC$
LANGUAGE ''sql'';', current_user);
  END;
$LQLMIGRATION$;
GRANT EXECUTE ON FUNCTION ctx.security_definer() TO PUBLIC;
GRANT EXECUTE ON FUNCTION ctx.is_security_definer() TO PUBLIC;

COMMIT;

