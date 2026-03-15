-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/entity_id/alterations/alt0000002259
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/entity_id/column


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ALTER COLUMN entity_id SET NOT NULL;

