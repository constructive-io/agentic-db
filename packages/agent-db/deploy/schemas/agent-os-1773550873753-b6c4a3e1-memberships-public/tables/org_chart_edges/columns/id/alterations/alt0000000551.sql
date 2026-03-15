-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/id/alterations/alt0000000551
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges 
  ALTER COLUMN id SET NOT NULL;

