-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-public/procedures/current_user_id/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-public/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-auth-public".current_user_id ()
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
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-auth-public".current_user_id TO authenticated;

