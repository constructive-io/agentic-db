-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/profile_id/alterations/alt0000000264
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_definition_grants.profile_id IS 'References the profile whose definition was modified';

