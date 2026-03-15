-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions 
  ENABLE ROW LEVEL SECURITY;

