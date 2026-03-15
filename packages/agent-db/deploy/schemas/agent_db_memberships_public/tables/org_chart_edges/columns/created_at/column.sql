-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ADD COLUMN created_at timestamptz;

