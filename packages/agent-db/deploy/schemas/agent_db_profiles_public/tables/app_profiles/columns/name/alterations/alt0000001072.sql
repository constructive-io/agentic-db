-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000001072
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/name/column


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN name SET NOT NULL;

