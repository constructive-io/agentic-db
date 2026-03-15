-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/column


ALTER TABLE agent_db_memberships_public.org_chart_edge_grants 
  DROP COLUMN created_at RESTRICT;


