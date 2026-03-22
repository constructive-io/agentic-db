-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/policies/enable_row_level_security


ALTER TABLE "agentic_db_memberships_public".org_chart_edge_grants 
  DISABLE ROW LEVEL SECURITY;


