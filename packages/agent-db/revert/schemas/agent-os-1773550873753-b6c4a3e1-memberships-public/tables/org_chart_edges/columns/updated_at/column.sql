-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges 
  DROP COLUMN updated_at RESTRICT;


