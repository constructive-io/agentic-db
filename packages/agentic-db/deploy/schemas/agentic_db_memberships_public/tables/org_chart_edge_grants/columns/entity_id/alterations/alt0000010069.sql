-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000010069
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/column


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN entity_id SET NOT NULL;

