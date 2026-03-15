-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000003488
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profile_definition_grants.is_grant IS E'True to add the permission to the profile, false to remove it';

