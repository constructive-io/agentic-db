-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/alterations/alt0000003455
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


COMMENT ON TABLE "agent_db_profiles_public".app_profile_permissions IS 'Join table linking profiles to individual permissions they include';

