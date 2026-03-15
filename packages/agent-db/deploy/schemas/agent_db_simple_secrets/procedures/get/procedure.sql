-- Deploy: schemas/agent_db_simple_secrets/procedures/get/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table



CREATE FUNCTION agent_db_simple_secrets.get (
  v_owner_id uuid,
  v_secret_name text,
  v_default_value text default null
)
  RETURNS text
  AS $$
DECLARE
    val text;
BEGIN
    SELECT value FROM agent_db_simple_secrets.secrets t 
        WHERE t.owner_id = get.v_owner_id
        AND t.name = get.v_secret_name
    INTO val;
    IF (NOT FOUND OR val IS NULL) THEN
        RETURN v_default_value;
    END IF;
    RETURN val;
END;
$$
LANGUAGE 'plpgsql'
STABLE;
GRANT EXECUTE ON FUNCTION agent_db_simple_secrets.get TO authenticated;

