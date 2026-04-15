-- Deploy: schemas/agentic_db_encrypted/procedures/verify/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


CREATE FUNCTION agentic_db_encrypted.verify(
  IN owner_id uuid,
  IN secret_name text,
  IN value text
) RETURNS boolean AS $_PGFN_$
DECLARE
  v_secret_text text;
  v_secret agentic_db_encrypted.encrypted_secrets;
BEGIN
  SELECT agentic_db_encrypted.get(verify.owner_id, verify.secret_name) INTO v_secret_text;
  SELECT *
  FROM agentic_db_encrypted.encrypted_secrets AS s
  WHERE
    s.name = verify.secret_name AND s.owner_id = verify.owner_id INTO v_secret;
  IF v_secret.algo = 'crypt' THEN
    RETURN v_secret_text = public.crypt(verify.value::bytea::text, v_secret_text);
  ELSIF v_secret.algo = 'pgp' THEN
    RETURN verify.value = v_secret_text;
  END IF;
  RETURN verify.value = v_secret_text;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

