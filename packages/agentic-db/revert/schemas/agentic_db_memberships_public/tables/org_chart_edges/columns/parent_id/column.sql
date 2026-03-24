-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  DROP COLUMN parent_id RESTRICT;


