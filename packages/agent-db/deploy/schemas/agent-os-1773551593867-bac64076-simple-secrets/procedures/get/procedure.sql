-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/procedures/get/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-simple-secrets".get (
  v_owner_id uuid,
  v_secret_name text,
  v_default_value text default null
)
  RETURNS text
  AS $$
DECLARE
    val text;
BEGIN
    SELECT value FROM "agent-os-1773551593867-bac64076-simple-secrets".secrets t 
        WHERE t.owner_id = get.v_owner_id
        AND t.name = get.v_secret_name
    INTO val;
    IF (NOT FOUND OR val IS NULL) THEN
        RETURN v_default_value;
    END IF;
    RETURN val;
END;
$$
LANGUAGE 'plpgsql'
STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-simple-secrets".get TO authenticated;

