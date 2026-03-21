-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000001330
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/column


COMMENT ON COLUMN "agentic_db_profiles_public".org_profile_definition_grants.profile_id IS 'References the profile whose definition was modified';

