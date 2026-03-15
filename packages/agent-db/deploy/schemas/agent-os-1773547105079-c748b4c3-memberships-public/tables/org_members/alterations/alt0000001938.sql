-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/alterations/alt0000001938
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
  DISABLE ROW LEVEL SECURITY;

