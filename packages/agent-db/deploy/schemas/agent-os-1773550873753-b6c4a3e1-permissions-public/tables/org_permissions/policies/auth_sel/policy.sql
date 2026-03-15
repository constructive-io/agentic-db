-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/table


CREATE POLICY auth_sel ON "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions
FOR SELECT
TO authenticated
USING (
  TRUE
);

