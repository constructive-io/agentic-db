-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000012582


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


