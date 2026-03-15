-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants 
  DROP COLUMN is_grant RESTRICT;


