-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000000577


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


