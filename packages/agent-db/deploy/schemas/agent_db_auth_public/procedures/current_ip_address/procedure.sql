-- Deploy: schemas/agent_db_auth_public/procedures/current_ip_address/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_public/schema



CREATE FUNCTION "agent_db_auth_public".current_ip_address ()
  RETURNS inet
AS $$
DECLARE
  v_ip_addr inet;
BEGIN
  IF current_setting('jwt.claims.ip_address', TRUE)
    IS NOT NULL THEN
    BEGIN
      v_ip_addr = current_setting('jwt.claims.ip_address', TRUE)::inet;
    EXCEPTION
      WHEN OTHERS THEN
      RAISE NOTICE 'Invalid IP';
    RETURN NULL;
    END;
    RETURN v_ip_addr;
  ELSE
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_auth_public".current_ip_address TO authenticated;

