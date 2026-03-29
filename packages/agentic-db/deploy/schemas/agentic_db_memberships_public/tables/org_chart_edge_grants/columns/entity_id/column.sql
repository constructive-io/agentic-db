-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ADD COLUMN entity_id uuid;

