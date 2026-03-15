-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/permission_id/alterations/alt0000001875
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/permission_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants.permission_id IS 'References the permission that was added to or removed from the profile';

