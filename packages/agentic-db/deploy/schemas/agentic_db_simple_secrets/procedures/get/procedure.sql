-- Deploy: schemas/agentic_db_simple_secrets/procedures/get/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


CREATE FUNCTION agentic_db_simple_secrets.get(
  IN owner_id uuid,
  IN secret_name text,
  IN default_value text DEFAULT NULL
) RETURNS text AS $_PGFN_$
DECLARE
  val text;
BEGIN
  SELECT value
  FROM agentic_db_simple_secrets.secrets AS t
  WHERE
    t.owner_id = get.owner_id AND t.name = get.secret_name INTO val;
  IF NOT (FOUND) OR val IS NULL THEN
    RETURN default_value;
  END IF;
  RETURN val;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

