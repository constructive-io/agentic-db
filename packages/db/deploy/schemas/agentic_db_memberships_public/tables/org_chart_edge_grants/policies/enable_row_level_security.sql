-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table


ALTER TABLE "agentic_db_memberships_public".org_chart_edge_grants 
  ENABLE ROW LEVEL SECURITY;

