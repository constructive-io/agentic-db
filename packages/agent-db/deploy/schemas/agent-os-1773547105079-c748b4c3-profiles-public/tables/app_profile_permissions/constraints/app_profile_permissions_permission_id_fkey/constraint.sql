-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/constraints/app_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions (id) 
    ON DELETE CASCADE;

