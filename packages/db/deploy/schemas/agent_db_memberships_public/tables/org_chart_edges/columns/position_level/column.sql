-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/position_level/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ADD COLUMN position_level int;

