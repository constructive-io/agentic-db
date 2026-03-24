-- Deploy: schemas/agentic_db_status_public/procedures/steps_achieved/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/procedures/steps_required/procedure



CREATE FUNCTION "agentic_db_status_public".steps_achieved (
  vlevel text,
  vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS boolean
AS $CODEZ$
DECLARE
  c int;
BEGIN
  SELECT COUNT(*) FROM
    "agentic_db_status_public".steps_required(
      vlevel,
      vrole_id
    )
  INTO c;
  RETURN c <= 0;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "agentic_db_status_public".steps_achieved TO authenticated;

