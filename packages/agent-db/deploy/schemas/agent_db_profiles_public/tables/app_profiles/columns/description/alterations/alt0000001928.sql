-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/description/alterations/alt0000001928
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/description/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profiles.description IS E'Human-readable description of this profile and its intended use';

