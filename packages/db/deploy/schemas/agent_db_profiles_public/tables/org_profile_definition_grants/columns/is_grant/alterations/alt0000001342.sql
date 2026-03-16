-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000001342
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profile_definition_grants.is_grant IS E'True to add the permission to the profile, false to remove it';

