-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/id/alterations/alt0000002264


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ALTER COLUMN id DROP NOT NULL;


