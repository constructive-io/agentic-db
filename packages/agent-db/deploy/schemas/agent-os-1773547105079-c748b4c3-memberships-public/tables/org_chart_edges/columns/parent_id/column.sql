-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/parent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  ADD COLUMN parent_id uuid;

