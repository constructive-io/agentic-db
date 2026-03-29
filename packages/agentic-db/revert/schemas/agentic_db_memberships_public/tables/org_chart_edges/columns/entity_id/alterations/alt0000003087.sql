-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/entity_id/alterations/alt0000003087


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ALTER COLUMN entity_id DROP NOT NULL;


