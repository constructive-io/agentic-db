-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/profile_id/alterations/alt0000003630
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/profile_id/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profile_permissions.profile_id IS 'References the profile this permission belongs to';

