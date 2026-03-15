-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


CREATE POLICY auth_del ON "agent_db_simple_secrets".secrets
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

