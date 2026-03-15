-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/column


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  DROP COLUMN child_id RESTRICT;


