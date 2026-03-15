-- Deploy: schemas/agent_db_simple_secrets/procedures/del/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table



CREATE FUNCTION agent_db_simple_secrets.del (
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
    DELETE FROM agent_db_simple_secrets.secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = secret_name;
$$
LANGUAGE 'sql'
VOLATILE;
CREATE FUNCTION agent_db_simple_secrets.del (
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
    DELETE FROM agent_db_simple_secrets.secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = ANY (secret_names);
$$
LANGUAGE 'sql'
VOLATILE;
GRANT EXECUTE ON FUNCTION agent_db_simple_secrets.del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION agent_db_simple_secrets.del(uuid,text[]) TO authenticated;

