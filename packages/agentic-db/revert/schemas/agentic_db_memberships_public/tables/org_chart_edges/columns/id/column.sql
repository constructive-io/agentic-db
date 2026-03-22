-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/id/column


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  DROP COLUMN id RESTRICT;


