-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/alterations/alt0000002253
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  DISABLE ROW LEVEL SECURITY;

