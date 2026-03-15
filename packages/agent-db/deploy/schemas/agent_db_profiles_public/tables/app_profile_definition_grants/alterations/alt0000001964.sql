-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/alterations/alt0000001964
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table


COMMENT ON TABLE "agent_db_profiles_public".app_profile_definition_grants IS 'Audit log of permission additions and removals from profile definitions';

