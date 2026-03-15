-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/id/alterations/alt0000000552
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/id/column



ALTER TABLE agent_db_memberships_public.org_chart_edges 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

