-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000003446
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_system/column


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN is_system SET NOT NULL;

