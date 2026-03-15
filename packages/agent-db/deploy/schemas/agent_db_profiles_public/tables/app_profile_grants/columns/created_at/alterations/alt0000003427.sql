-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/created_at/alterations/alt0000003427
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/created_at/column


ALTER TABLE "agent_db_profiles_public".app_profile_grants 
  ALTER COLUMN created_at SET DEFAULT now();

