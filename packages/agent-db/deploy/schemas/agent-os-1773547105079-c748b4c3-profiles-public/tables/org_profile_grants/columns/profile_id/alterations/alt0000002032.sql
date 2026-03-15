-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/profile_id/alterations/alt0000002032
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_grants/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_grants.profile_id IS E'References the profile being assigned; NULL indicates the profile was removed';

