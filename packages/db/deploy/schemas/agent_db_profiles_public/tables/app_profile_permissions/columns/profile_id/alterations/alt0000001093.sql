-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000001093
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profile_permissions.profile_id IS 'References the profile this permission belongs to';

