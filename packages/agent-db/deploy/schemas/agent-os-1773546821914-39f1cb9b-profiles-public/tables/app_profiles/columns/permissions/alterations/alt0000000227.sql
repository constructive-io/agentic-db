-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/permissions/alterations/alt0000000227
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

