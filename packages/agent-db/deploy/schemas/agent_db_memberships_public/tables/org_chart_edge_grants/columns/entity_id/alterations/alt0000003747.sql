-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000003747
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/column


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  ALTER COLUMN entity_id SET NOT NULL;

