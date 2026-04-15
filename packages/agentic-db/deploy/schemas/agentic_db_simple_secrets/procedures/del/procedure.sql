-- Deploy: schemas/agentic_db_simple_secrets/procedures/del/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


CREATE FUNCTION agentic_db_simple_secrets.del(
  IN owner_id uuid,
  IN secret_name text
) RETURNS void AS $_PGFN_$
BEGIN
  DELETE FROM agentic_db_simple_secrets.secrets AS s
  WHERE
    s.owner_id = del.owner_id AND s.name = secret_name;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

