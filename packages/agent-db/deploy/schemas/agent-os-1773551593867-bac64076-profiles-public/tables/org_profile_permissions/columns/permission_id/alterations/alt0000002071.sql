-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000002071
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/permission_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions.permission_id IS 'References the permission included in this profile';

