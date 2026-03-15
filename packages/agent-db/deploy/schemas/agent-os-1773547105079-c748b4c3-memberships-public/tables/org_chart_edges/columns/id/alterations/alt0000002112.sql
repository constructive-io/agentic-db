-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/id/alterations/alt0000002112
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  ALTER COLUMN id SET NOT NULL;

