-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/policies/enable_row_level_security


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DISABLE ROW LEVEL SECURITY;


