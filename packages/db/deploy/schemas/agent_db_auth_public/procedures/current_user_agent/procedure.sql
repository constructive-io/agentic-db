-- Deploy: schemas/agent_db_auth_public/procedures/current_user_agent/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_public/schema



CREATE FUNCTION "agent_db_auth_public".current_user_agent ()
  RETURNS text
AS $$
DECLARE
  v_uagent text;
BEGIN
  IF current_setting('jwt.claims.user_agent', TRUE)
    IS NOT NULL THEN
    BEGIN
      v_uagent = current_setting('jwt.claims.user_agent', TRUE);
    EXCEPTION
      WHEN OTHERS THEN
      RAISE NOTICE 'Invalid UserAgent';
    RETURN NULL;
    END;
    RETURN v_uagent;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_auth_public".current_user_agent TO authenticated;

