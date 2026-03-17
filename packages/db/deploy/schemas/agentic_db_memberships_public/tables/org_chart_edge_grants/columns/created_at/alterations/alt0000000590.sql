-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/alterations/alt0000000590
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/column



ALTER TABLE "agentic_db_memberships_public".org_chart_edge_grants 
    ALTER COLUMN created_at SET DEFAULT now();

