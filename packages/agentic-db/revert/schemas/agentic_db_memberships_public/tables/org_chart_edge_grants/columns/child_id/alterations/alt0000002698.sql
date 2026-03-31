-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000002698


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN child_id DROP NOT NULL;


