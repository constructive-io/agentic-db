-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/constraints/app_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions (id) 
    ON DELETE CASCADE;

