-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000001802
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions.profile_id IS 'References the profile this permission belongs to';

