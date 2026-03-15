-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/alterations/alt0000003434
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table


ALTER TABLE "agent_db_profiles_public".app_profiles 
  DISABLE ROW LEVEL SECURITY;

