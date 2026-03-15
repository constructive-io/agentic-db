-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/alterations/alt0000003445
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/permissions/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

