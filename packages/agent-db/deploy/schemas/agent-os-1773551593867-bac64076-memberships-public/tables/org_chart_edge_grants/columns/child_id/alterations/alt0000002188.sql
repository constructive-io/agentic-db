-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000002188
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/child_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  ALTER COLUMN child_id SET NOT NULL;

