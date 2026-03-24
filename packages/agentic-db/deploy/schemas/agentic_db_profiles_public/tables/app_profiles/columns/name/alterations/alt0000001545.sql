-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000001545
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/name/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.name IS E'Display name for this profile (e.g. Admin, Editor, Viewer)';

