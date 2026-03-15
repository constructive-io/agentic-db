-- Deploy: schemas/agent-os-1773547105079-c748b4c3-encrypted/procedures/verify/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/algo/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-encrypted".verify (
  owner_id uuid,
  secret_name text,
  value text
)
  RETURNS boolean
  AS $$
DECLARE
  v_secret_text text;
  v_secret "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets;
BEGIN
  SELECT
    *
  FROM
    "agent-os-1773547105079-c748b4c3-encrypted".get (verify.owner_id, verify.secret_name)
  INTO v_secret_text;
  SELECT
    *
  FROM
    "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets s
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
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-encrypted".verify TO authenticated;

