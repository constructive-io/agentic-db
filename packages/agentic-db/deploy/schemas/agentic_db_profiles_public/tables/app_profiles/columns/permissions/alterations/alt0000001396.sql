-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000001396
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/permissions/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

