-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/procedures/set/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/algo/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/value/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-encrypted".set (
  v_owner_id uuid,
  secret_name text,
  secret_value text,
  v_algo text = 'pgp'
)
  RETURNS boolean
  AS $$
BEGIN
  INSERT INTO "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets (owner_id, name, value, algo)
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
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-encrypted".set TO authenticated;

