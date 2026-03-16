-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/alterations/alt0000001401
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  DISABLE ROW LEVEL SECURITY;

