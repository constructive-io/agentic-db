-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-users-public".users
FOR SELECT
TO authenticated
USING (
  TRUE
);

