-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/description/alterations/alt0000002146
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/description/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profiles.description IS E'Human-readable description of this profile and its intended use';

