-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/id/alterations/alt0000001100
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/id/column


ALTER TABLE "agent_db_profiles_public".app_profile_grants 
  ALTER COLUMN id SET NOT NULL;

