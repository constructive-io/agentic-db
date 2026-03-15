-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000003395
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/column


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN permissions SET NOT NULL;

