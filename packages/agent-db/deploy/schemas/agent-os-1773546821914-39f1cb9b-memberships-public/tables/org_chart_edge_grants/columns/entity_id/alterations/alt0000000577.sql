-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000000577
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants 
  ALTER COLUMN entity_id SET NOT NULL;

