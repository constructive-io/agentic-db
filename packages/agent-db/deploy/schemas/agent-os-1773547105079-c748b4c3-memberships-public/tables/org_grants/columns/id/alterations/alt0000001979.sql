-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/columns/id/alterations/alt0000001979
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_grants/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_grants 
  ALTER COLUMN id SET NOT NULL;

