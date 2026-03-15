-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table


CREATE POLICY auth_sel ON agent_db_permissions_public.app_permission_defaults
FOR SELECT
TO authenticated
USING (
  TRUE
);

