-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/alterations/alt0000001420
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profile_grants.membership_id IS 'References the membership that received or lost this profile';

