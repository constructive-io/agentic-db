-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  ADD COLUMN grantor_id uuid;

