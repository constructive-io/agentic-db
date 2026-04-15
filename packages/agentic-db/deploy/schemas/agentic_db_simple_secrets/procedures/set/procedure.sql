-- Deploy: schemas/agentic_db_simple_secrets/procedures/set/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


CREATE FUNCTION agentic_db_simple_secrets.set(
  IN user_id uuid,
  IN secret_name text,
  IN value anyelement
) RETURNS void AS $_PGFN_$
BEGIN
  INSERT INTO agentic_db_simple_secrets.secrets (
    owner_id,
    name,
    value
  )
  VALUES
    (set.user_id, set.secret_name, set.value::text)
  ON CONFLICT (owner_id, name) DO UPDATE SET
  value = EXCLUDED.value;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

