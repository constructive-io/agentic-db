-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


CREATE POLICY auth_sel ON "agent_db_permissions_public".org_permissions
FOR SELECT
TO authenticated
USING (
  TRUE
);

