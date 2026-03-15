-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


CREATE POLICY auth_upd ON agent_db_simple_secrets.secrets
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

