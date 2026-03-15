-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/policies/enable_row_level_security


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  DISABLE ROW LEVEL SECURITY;


