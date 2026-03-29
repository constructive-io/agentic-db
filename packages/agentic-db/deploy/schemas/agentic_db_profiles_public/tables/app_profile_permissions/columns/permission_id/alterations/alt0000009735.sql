-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000009735
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/columns/permission_id/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profile_permissions.permission_id IS 'References the permission included in this profile';

