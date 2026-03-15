-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ENABLE ROW LEVEL SECURITY;

