-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/procedures/set/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".set (
  v_owner_id uuid,
  v_secret_name text,
  v_value anyelement
)
  RETURNS void
  AS $$
    INSERT INTO "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
        (owner_id, name, value)
    VALUES
        (set.v_owner_id, set.v_secret_name, set.v_value::text)
    ON CONFLICT (owner_id, name)
    DO UPDATE 
    SET value = EXCLUDED.value;
$$
LANGUAGE 'sql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".set TO authenticated;

