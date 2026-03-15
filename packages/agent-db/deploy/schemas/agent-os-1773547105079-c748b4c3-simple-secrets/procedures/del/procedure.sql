-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/procedures/del/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".del (
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
    DELETE FROM "agent-os-1773547105079-c748b4c3-simple-secrets".secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = secret_name;
$$
LANGUAGE 'sql'
VOLATILE;
CREATE FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".del (
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
    DELETE FROM "agent-os-1773547105079-c748b4c3-simple-secrets".secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = ANY (secret_names);
$$
LANGUAGE 'sql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-simple-secrets".del(uuid,text[]) TO authenticated;

