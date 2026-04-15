-- Deploy: schemas/agentic_db_auth_public/procedures/current_user_agent/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema


CREATE FUNCTION agentic_db_auth_public.current_user_agent() RETURNS text AS $_PGFN_$
BEGIN
  RETURN jwt_public.user_agent();
EXCEPTION
  WHEN OTHERS THEN
    RETURN NULL;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

