-- Deploy: schemas/agent_db_simple_secrets/procedures/set/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table



CREATE FUNCTION "agent_db_simple_secrets".set (
  v_owner_id uuid,
  v_secret_name text,
  v_value anyelement
)
  RETURNS void
  AS $$
    INSERT INTO "agent_db_simple_secrets".secrets 
        (owner_id, name, value)
    VALUES
        (set.v_owner_id, set.v_secret_name, set.v_value::text)
    ON CONFLICT (owner_id, name)
    DO UPDATE 
    SET value = EXCLUDED.value;
$$
LANGUAGE 'sql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent_db_simple_secrets".set TO authenticated;

