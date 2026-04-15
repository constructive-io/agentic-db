-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000012444
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/name/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profiles.name IS E'Display name for this profile (e.g. Admin, Editor, Viewer)';

