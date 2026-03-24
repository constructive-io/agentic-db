-- Deploy: schemas/agentic_db_encrypted/procedures/set/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/algo/column
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/value/column
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION agentic_db_encrypted.set (
  v_owner_id uuid,
  secret_name text,
  secret_value text,
  v_algo text = 'pgp'
)
  RETURNS boolean
  AS $$
BEGIN
  INSERT INTO agentic_db_encrypted.encrypted_secrets (owner_id, name, value, algo)
    VALUES (v_owner_id, set.secret_name, set.secret_value::bytea, set.v_algo)
    ON CONFLICT (owner_id, name)
    DO
    UPDATE
    SET
      value = set.secret_value::bytea,
      algo = EXCLUDED.algo;
  RETURN TRUE;
END
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION agentic_db_encrypted.set TO authenticated;

