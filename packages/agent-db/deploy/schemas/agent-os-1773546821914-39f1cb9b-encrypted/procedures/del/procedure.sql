-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/procedures/del/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-encrypted".del(
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = del.secret_name;
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-encrypted".del(
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = ANY(del.secret_names);
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-encrypted".del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-encrypted".del(uuid,text[]) TO authenticated;

