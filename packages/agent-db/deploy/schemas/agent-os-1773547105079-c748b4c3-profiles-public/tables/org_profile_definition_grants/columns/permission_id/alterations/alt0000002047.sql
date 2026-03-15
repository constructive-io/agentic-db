-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/permission_id/alterations/alt0000002047
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/permission_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants.permission_id IS 'References the permission that was added to or removed from the profile';

