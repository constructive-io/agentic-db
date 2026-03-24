-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


CREATE POLICY auth_sel ON agentic_db_permissions_public.app_permission_defaults
FOR SELECT
TO authenticated
USING (
  TRUE
);

