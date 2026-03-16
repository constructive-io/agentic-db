-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/slug/alterations/alt0000001074
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/slug/column


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN slug SET NOT NULL;

