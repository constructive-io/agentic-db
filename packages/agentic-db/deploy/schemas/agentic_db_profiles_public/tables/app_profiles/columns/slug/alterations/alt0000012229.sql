-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/slug/alterations/alt0000012229
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/slug/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

