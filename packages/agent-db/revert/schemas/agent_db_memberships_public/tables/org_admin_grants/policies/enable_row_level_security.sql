-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/policies/enable_row_level_security


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  DISABLE ROW LEVEL SECURITY;


