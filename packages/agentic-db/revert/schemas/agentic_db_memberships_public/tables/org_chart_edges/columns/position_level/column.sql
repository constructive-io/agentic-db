-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/position_level/column


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  DROP COLUMN position_level RESTRICT;


