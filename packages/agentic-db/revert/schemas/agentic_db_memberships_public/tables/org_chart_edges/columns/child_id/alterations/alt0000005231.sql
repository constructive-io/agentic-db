-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000005231


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ALTER COLUMN child_id DROP NOT NULL;


