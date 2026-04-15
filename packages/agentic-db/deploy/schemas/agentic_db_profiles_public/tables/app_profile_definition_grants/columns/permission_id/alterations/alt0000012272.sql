-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000012272
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/permission_id/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profile_definition_grants.permission_id IS 'References the permission that was added to or removed from the profile';

