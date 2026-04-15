-- Deploy: schemas/agentic_db_auth_public/procedures/current_ip_address/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema


CREATE FUNCTION agentic_db_auth_public.current_ip_address() RETURNS inet AS $_PGFN_$
BEGIN
  RETURN jwt_public.ip_address();
EXCEPTION
  WHEN OTHERS THEN
    RETURN NULL;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

