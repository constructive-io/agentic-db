-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/updated_at/alterations/alt0000002267
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ALTER COLUMN updated_at SET DEFAULT now();

