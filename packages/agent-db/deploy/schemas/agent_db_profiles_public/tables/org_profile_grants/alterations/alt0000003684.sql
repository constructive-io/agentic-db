-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_grants/alterations/alt0000003684
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_grants/table


COMMENT ON TABLE "agent_db_profiles_public".org_profile_grants IS 'Audit log of profile assignments and revocations for members';

