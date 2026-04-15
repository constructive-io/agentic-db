-- Deploy: schemas/agentic_db_encrypted/procedures/del/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


CREATE FUNCTION agentic_db_encrypted.del(
  IN owner_id uuid,
  IN secret_name text
) RETURNS void AS $_PGFN_$
BEGIN
  DELETE FROM agentic_db_encrypted.encrypted_secrets AS s
  WHERE
    s.owner_id = del.owner_id AND s.name = del.secret_name;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

