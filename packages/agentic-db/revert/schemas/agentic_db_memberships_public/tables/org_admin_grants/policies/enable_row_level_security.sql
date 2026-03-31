-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/policies/enable_row_level_security


ALTER TABLE "agentic_db_memberships_public".org_admin_grants 
  DISABLE ROW LEVEL SECURITY;


