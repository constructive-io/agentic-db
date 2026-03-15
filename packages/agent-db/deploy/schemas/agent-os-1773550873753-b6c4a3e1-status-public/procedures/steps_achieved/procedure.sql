-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/procedures/steps_achieved/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/procedures/steps_required/procedure



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-status-public".steps_achieved (
  vlevel text,
  vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS boolean
AS $CODEZ$
DECLARE
  c int;
BEGIN
  SELECT COUNT(*) FROM
    "agent-os-1773550873753-b6c4a3e1-status-public".steps_required(
      vlevel,
      vrole_id
    )
  INTO c;
  RETURN c <= 0;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-status-public".steps_achieved TO authenticated;

