-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/entity_id/alterations/alt0000002015
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles.entity_id IS E'Scopes this profile to a specific entity; NULL means it is a global profile';

