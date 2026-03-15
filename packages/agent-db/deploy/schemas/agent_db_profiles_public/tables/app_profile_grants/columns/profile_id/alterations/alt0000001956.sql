-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/profile_id/alterations/alt0000001956
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/profile_id/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profile_grants.profile_id IS E'References the profile being assigned; NULL indicates the profile was removed';

