-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000002093
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants.profile_id IS 'References the profile whose definition was modified';

