-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000000441
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/column


COMMENT ON COLUMN agent_db_profiles_public.org_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

