-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ENABLE ROW LEVEL SECURITY;

