-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/alterations/alt0000003683
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE "agent_db_profiles_public".org_profile_grants 
  DISABLE ROW LEVEL SECURITY;

