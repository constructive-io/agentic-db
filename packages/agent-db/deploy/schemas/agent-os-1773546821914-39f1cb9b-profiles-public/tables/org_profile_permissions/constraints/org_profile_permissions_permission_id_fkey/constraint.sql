-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/constraints/org_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions (id) 
    ON DELETE CASCADE;

