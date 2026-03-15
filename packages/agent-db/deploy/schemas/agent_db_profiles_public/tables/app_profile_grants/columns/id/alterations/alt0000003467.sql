-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/id/alterations/alt0000003467
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/id/column



ALTER TABLE "agent_db_profiles_public".app_profile_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

