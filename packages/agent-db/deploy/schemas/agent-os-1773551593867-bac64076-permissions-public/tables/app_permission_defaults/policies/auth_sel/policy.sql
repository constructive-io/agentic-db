-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/table


CREATE POLICY auth_sel ON "agent-os-1773551593867-bac64076-permissions-public".app_permission_defaults
FOR SELECT
TO authenticated
USING (
  TRUE
);

