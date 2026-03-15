-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/procedures/del/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent-os-1773551593867-bac64076-encrypted".del(
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = del.secret_name;
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
CREATE FUNCTION "agent-os-1773551593867-bac64076-encrypted".del(
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = ANY(del.secret_names);
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-encrypted".del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-encrypted".del(uuid,text[]) TO authenticated;

