-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table


CREATE POLICY auth_sel ON "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions
FOR SELECT
TO authenticated
USING (
  TRUE
);

