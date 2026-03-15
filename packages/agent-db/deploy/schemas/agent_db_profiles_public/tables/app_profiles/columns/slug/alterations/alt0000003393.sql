-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/slug/alterations/alt0000003393
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/slug/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

