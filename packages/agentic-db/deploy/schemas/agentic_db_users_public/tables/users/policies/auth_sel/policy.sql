-- Deploy: schemas/agentic_db_users_public/tables/users/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


CREATE POLICY auth_sel ON "agentic_db_users_public".users
FOR SELECT
TO authenticated
USING (
  TRUE
);

