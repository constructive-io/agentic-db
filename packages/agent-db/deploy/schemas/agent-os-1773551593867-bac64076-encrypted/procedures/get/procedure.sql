-- Deploy: schemas/agent-os-1773551593867-bac64076-encrypted/procedures/get/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/schema
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/value/column
-- requires: schemas/agent-os-1773551593867-bac64076-encrypted/tables/encrypted_secrets/columns/owner_id/column



CREATE FUNCTION "agent-os-1773551593867-bac64076-encrypted".get (
  owner_id uuid,
  secret_name text,
  default_value text default null
)
  RETURNS text
  AS $$
DECLARE
  v_secret "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets;
BEGIN
  SELECT
    *
  FROM
    "agent-os-1773551593867-bac64076-encrypted".encrypted_secrets s
  WHERE
    s.name = get.secret_name
    AND s.owner_id = get.owner_id
  INTO v_secret;
  IF (NOT FOUND OR v_secret IS NULL) THEN
    RETURN get.default_value;
  END IF;
  
  IF (v_secret.algo = 'crypt') THEN
    RETURN convert_from(v_secret.value, 'SQL_ASCII');
  ELSIF (v_secret.algo = 'pgp') THEN
    RETURN convert_from(decode(pgp_sym_decrypt(v_secret.value, v_secret.owner_id::text), 'hex'), 'SQL_ASCII');
  END IF;
  RETURN convert_from(v_secret.value, 'SQL_ASCII');
END
$$
LANGUAGE 'plpgsql'
STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-encrypted".get TO authenticated;

