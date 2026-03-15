-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/entity_id/alterations/alt0000000555
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges 
  ALTER COLUMN entity_id SET NOT NULL;

