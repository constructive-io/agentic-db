-- Deploy: schemas/agentic_db_encrypted/procedures/del/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION agentic_db_encrypted.del(
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM agentic_db_encrypted.encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = del.secret_name;
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
CREATE FUNCTION agentic_db_encrypted.del(
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
BEGIN
  DELETE FROM agentic_db_encrypted.encrypted_secrets s
  WHERE s.owner_id = del.owner_id
    AND s.name = ANY(del.secret_names);
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION agentic_db_encrypted.del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION agentic_db_encrypted.del(uuid,text[]) TO authenticated;

