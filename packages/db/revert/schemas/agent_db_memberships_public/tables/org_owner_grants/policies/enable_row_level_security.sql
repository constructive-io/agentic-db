-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/policies/enable_row_level_security


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  DISABLE ROW LEVEL SECURITY;


