-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/is_system/alterations/alt0000002009
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/is_system/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

