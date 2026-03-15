-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/is_system/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles 
  ADD COLUMN is_system boolean;

