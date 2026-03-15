-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000001804
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/permission_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions.permission_id IS 'References the permission included in this profile';

