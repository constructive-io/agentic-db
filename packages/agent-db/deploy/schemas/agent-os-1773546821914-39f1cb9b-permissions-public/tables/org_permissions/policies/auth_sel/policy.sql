-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions
FOR SELECT
TO authenticated
USING (
  TRUE
);

