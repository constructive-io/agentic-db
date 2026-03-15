-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000000584
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/column


ALTER TABLE agent_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN is_grant SET NOT NULL;

