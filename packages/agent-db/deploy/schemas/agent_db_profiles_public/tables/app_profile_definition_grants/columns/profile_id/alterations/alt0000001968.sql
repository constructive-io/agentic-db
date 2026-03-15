-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/alterations/alt0000001968
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profile_definition_grants.profile_id IS 'References the profile whose definition was modified';

