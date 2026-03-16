-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


CREATE POLICY auth_ins ON "agent_db_simple_secrets".secrets
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

