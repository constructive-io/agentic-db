-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/slug/alterations/alt0000001784
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/slug/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles.slug IS E'URL-safe identifier for this profile, used in API references';

