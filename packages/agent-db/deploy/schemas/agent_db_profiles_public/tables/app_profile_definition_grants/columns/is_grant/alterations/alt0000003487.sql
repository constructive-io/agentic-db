-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000003487
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/column



ALTER TABLE "agent_db_profiles_public".app_profile_definition_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

