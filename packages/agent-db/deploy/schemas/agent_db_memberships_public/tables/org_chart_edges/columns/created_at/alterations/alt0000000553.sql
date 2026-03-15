-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/created_at/alterations/alt0000000553
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/created_at/column


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ALTER COLUMN created_at SET DEFAULT now();

