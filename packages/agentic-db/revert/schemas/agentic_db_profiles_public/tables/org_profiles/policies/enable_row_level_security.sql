-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/policies/enable_row_level_security


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  DISABLE ROW LEVEL SECURITY;


