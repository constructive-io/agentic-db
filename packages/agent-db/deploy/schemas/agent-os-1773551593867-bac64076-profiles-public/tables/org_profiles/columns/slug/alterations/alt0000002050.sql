-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/slug/alterations/alt0000002050
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/slug/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

