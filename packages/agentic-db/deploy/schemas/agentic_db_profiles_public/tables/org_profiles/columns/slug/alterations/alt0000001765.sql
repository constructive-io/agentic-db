-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000001765
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/slug/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

