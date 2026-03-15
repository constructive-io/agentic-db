-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/entity_id/alterations/alt0000002158
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/entity_id/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profiles.entity_id IS E'Scopes this profile to a specific entity; NULL means it is a global profile';

