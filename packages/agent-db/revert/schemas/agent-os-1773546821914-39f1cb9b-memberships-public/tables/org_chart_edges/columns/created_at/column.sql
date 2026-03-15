-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges 
  DROP COLUMN created_at RESTRICT;


