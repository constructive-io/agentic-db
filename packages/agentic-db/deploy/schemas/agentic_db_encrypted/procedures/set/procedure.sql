-- Deploy: schemas/agentic_db_encrypted/procedures/set/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


CREATE FUNCTION agentic_db_encrypted.set(
  IN user_id uuid,
  IN secret_name text,
  IN secret_value text,
  IN algo text DEFAULT 'pgp'
) RETURNS boolean AS $_PGFN_$
BEGIN
  INSERT INTO agentic_db_encrypted.encrypted_secrets (
    owner_id,
    name,
    value,
    algo
  )
  VALUES
    (set.user_id, set.secret_name, set.secret_value::bytea, set.algo)
  ON CONFLICT (owner_id, name) DO UPDATE SET
  value = set.secret_value::bytea, algo = EXCLUDED.algo;
  RETURN true;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

