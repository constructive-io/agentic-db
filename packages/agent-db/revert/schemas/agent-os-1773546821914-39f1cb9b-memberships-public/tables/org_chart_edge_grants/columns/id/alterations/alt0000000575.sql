-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/id/alterations/alt0000000575


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants 
  ALTER COLUMN id DROP NOT NULL;


