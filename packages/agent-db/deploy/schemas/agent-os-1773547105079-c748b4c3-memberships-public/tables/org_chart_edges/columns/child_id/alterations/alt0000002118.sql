-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000002118
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/child_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  ALTER COLUMN child_id SET NOT NULL;

