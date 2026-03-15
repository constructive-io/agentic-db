-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/updated_at/alterations/alt0000003490
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/updated_at/column


ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

