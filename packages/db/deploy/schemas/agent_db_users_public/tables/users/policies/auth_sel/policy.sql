-- Deploy: schemas/agent_db_users_public/tables/users/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


CREATE POLICY auth_sel ON "agent_db_users_public".users
FOR SELECT
TO authenticated
USING (
  TRUE
);

