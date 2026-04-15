-- Deploy: schemas/agentic_db_status_public/procedures/member_steps_achieved/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/procedures/member_steps_required/procedure


CREATE FUNCTION agentic_db_status_public.member_steps_achieved(
  IN level text,
  IN entity_id uuid,
  IN role_id uuid
) RETURNS boolean AS $_PGFN_$
DECLARE
  c int;
BEGIN
  SELECT count(*)
  FROM agentic_db_status_public.member_steps_required(member_steps_achieved.level, member_steps_achieved.entity_id, member_steps_achieved.role_id) INTO c;
  RETURN c <= 0;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

