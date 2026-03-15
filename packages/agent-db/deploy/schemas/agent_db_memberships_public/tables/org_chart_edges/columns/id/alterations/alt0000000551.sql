-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/id/alterations/alt0000000551
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/id/column


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ALTER COLUMN id SET NOT NULL;

