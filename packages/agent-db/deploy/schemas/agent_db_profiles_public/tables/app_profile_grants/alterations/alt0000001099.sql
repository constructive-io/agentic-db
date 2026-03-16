-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/alterations/alt0000001099
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table


COMMENT ON TABLE "agent_db_profiles_public".app_profile_grants IS 'Audit log of profile assignments and revocations for members';

