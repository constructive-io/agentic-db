-- Deploy: schemas/agent_db_encrypted/procedures/verify/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/algo/column
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent_db_encrypted".verify (
  owner_id uuid,
  secret_name text,
  value text
)
  RETURNS boolean
  AS $$
DECLARE
  v_secret_text text;
  v_secret "agent_db_encrypted".encrypted_secrets;
BEGIN
  SELECT
    *
  FROM
    "agent_db_encrypted".get (verify.owner_id, verify.secret_name)
  INTO v_secret_text;
  SELECT
    *
  FROM
    "agent_db_encrypted".encrypted_secrets s
  WHERE
    s.name = verify.secret_name
    AND s.owner_id = verify.owner_id INTO v_secret;
  IF (v_secret.algo = 'crypt') THEN
    RETURN v_secret_text = crypt(verify.value::bytea::text, v_secret_text);
  ELSIF (v_secret.algo = 'pgp') THEN
    RETURN verify.value = v_secret_text;
  END IF;
  RETURN verify.value = v_secret_text;
END
$$
LANGUAGE 'plpgsql'
STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_encrypted".verify TO authenticated;

