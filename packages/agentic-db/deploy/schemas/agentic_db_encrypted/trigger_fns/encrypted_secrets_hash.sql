-- Deploy: schemas/agentic_db_encrypted/trigger_fns/encrypted_secrets_hash
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema


CREATE FUNCTION agentic_db_encrypted.encrypted_secrets_hash() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.algo = 'crypt' THEN
    SELECT public.crypt(NEW.value::text, public.gen_salt('bf')) INTO NEW.value;
  ELSE
    IF NEW.algo = 'pgp' THEN
      SELECT public.pgp_sym_encrypt(pg_catalog.encode(NEW.value::bytea, 'hex'), NEW.owner_id::text, 'compress-algo=1, cipher-algo=aes256') INTO NEW.value;
    ELSE
      SELECT 'none' INTO NEW.algo;
    END IF;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

