-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE "agentic_db_memberships_public".org_chart_edges 
  ADD COLUMN created_at timestamptz;

