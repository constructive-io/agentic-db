-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000002022
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/columns/permission_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions 
  ALTER COLUMN permission_id SET NOT NULL;

