-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/id/alterations/alt0000003794
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/id/column



ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

