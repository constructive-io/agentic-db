-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/constraints/org_chart_edges_parent_id_fkey/constraint


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  DROP CONSTRAINT org_chart_edges_parent_id_fkey;


