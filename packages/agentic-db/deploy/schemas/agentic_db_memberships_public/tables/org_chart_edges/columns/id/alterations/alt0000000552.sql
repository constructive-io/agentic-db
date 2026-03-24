-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/id/alterations/alt0000000552
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/id/column



ALTER TABLE "agentic_db_memberships_public".org_chart_edges 
    ALTER COLUMN id SET DEFAULT uuidv7();

