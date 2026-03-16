-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/alterations/alt0000001322
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/columns/membership_id/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profile_grants.membership_id IS 'References the membership that received or lost this profile';

