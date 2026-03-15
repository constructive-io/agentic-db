-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/slug/alterations/alt0000000223
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/slug/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

