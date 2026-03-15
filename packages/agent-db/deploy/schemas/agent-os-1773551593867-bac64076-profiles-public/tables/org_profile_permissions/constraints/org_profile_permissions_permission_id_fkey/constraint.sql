-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/constraints/org_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773551593867-bac64076-permissions-public".org_permissions (id) 
    ON DELETE CASCADE;

