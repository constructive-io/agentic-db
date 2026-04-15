-- Deploy: schemas/agentic_db_status_public/procedures/steps_achieved/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/procedures/steps_required/procedure


CREATE FUNCTION agentic_db_status_public.steps_achieved(
  IN level text,
  IN role_id uuid
) RETURNS boolean AS $_PGFN_$
DECLARE
  c int;
BEGIN
  SELECT count(*)
  FROM agentic_db_status_public.steps_required(steps_achieved.level, steps_achieved.role_id) INTO c;
  RETURN c <= 0;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

