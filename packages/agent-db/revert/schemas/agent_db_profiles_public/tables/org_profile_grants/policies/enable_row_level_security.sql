-- Revert: schemas/agent_db_profiles_public/tables/org_profile_grants/policies/enable_row_level_security


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  DISABLE ROW LEVEL SECURITY;


