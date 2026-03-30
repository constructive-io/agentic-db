-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/is_grant/alterations/alt0000000256
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/is_grant/column


COMMENT ON COLUMN "agentic_db_profiles_public".app_profile_grants.is_grant IS E'True to assign the profile, false to revoke it';

