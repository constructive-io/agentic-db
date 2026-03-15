-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table


CREATE POLICY auth_sel ON "agent-os-1773550873753-b6c4a3e1-users-public".users
FOR SELECT
TO authenticated
USING (
  TRUE
);

