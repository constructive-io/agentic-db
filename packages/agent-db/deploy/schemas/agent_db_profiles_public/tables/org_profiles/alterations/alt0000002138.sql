-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/alterations/alt0000002138
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


ALTER TABLE "agent_db_profiles_public".org_profiles 
  DISABLE ROW LEVEL SECURITY;

