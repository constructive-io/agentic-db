-- Deploy: schemas/agentic_db_encrypted/procedures/get/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


CREATE FUNCTION agentic_db_encrypted.get(
  IN owner_id uuid,
  IN secret_name text,
  IN default_value text DEFAULT NULL
) RETURNS text AS $_PGFN_$
DECLARE
  v_secret agentic_db_encrypted.encrypted_secrets;
BEGIN
  SELECT *
  FROM agentic_db_encrypted.encrypted_secrets AS s
  WHERE
    s.name = get.secret_name AND s.owner_id = get.owner_id INTO v_secret;
  IF NOT (FOUND) OR v_secret IS NULL THEN
    RETURN get.default_value;
  END IF;
  IF v_secret.algo = 'crypt' THEN
    RETURN pg_catalog.convert_from(v_secret.value, 'SQL_ASCII');
  ELSIF v_secret.algo = 'pgp' THEN
    RETURN pg_catalog.convert_from(pg_catalog.decode(public.pgp_sym_decrypt(v_secret.value, v_secret.owner_id::text), 'hex'), 'SQL_ASCII');
  END IF;
  RETURN pg_catalog.convert_from(v_secret.value, 'SQL_ASCII');
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

