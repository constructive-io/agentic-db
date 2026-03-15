-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/procedures/member_steps_achieved/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/procedures/member_steps_required/procedure



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-status-public".member_steps_achieved (
  vlevel text,
  ventity_id uuid,
  vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS boolean
AS $CODEZ$
DECLARE
  c int;
BEGIN
  SELECT COUNT(*) FROM
    "agent-os-1773547105079-c748b4c3-status-public".member_steps_required(
      vlevel,
      ventity_id,
      vrole_id
    )
  INTO c;
  RETURN c <= 0;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-status-public".member_steps_achieved TO authenticated;

