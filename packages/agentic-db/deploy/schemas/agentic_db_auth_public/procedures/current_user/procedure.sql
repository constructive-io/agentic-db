-- Deploy: schemas/agentic_db_auth_public/procedures/current_user/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


CREATE FUNCTION agentic_db_auth_public.current_user() RETURNS agentic_db_users_public.users AS $_PGFN_$
DECLARE
  v_user agentic_db_users_public.users;
BEGIN
  IF agentic_db_auth_public.current_user_id() IS NOT NULL THEN
    SELECT *
    FROM ONLY agentic_db_users_public.users
    WHERE
      id = agentic_db_auth_public.current_user_id() INTO v_user;
    RETURN v_user;
  ELSE
    RETURN NULL;
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;

