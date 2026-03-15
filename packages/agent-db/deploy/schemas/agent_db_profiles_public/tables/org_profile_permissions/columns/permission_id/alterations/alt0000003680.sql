-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000003680
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/permission_id/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profile_permissions.permission_id IS 'References the permission included in this profile';

