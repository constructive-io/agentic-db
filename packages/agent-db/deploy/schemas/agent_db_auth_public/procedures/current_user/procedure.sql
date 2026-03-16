-- Deploy: schemas/agent_db_auth_public/procedures/current_user/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table



CREATE FUNCTION "agent_db_auth_public"."current_user"()
    RETURNS "agent_db_users_public".users
AS $$
DECLARE
  v_user "agent_db_users_public".users;
BEGIN
  IF "agent_db_auth_public".current_user_id() IS NOT NULL THEN
     SELECT * FROM "agent_db_users_public".users WHERE id = "agent_db_auth_public".current_user_id() INTO v_user;
     RETURN v_user;
  ELSE
     RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_auth_public"."current_user" TO authenticated;

