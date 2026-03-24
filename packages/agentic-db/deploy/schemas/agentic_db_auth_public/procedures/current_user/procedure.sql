-- Deploy: schemas/agentic_db_auth_public/procedures/current_user/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_auth_public."current_user"()
    RETURNS agentic_db_users_public.users
AS $$
DECLARE
  v_user agentic_db_users_public.users;
BEGIN
  IF agentic_db_auth_public.current_user_id() IS NOT NULL THEN
     SELECT * FROM agentic_db_users_public.users WHERE id = agentic_db_auth_public.current_user_id() INTO v_user;
     RETURN v_user;
  ELSE
     RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION agentic_db_auth_public."current_user" TO authenticated;

