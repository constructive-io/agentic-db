-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-public/procedures/current_user/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-auth-public"."current_user"()
    RETURNS "agent-os-1773547105079-c748b4c3-users-public".users
AS $$
DECLARE
  v_user "agent-os-1773547105079-c748b4c3-users-public".users;
BEGIN
  IF "agent-os-1773547105079-c748b4c3-auth-public".current_user_id() IS NOT NULL THEN
     SELECT * FROM "agent-os-1773547105079-c748b4c3-users-public".users WHERE id = "agent-os-1773547105079-c748b4c3-auth-public".current_user_id() INTO v_user;
     RETURN v_user;
  ELSE
     RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-auth-public"."current_user" TO authenticated;

