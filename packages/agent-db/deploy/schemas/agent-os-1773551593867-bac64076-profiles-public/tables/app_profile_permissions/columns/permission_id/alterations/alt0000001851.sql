-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000001851
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/permission_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  ALTER COLUMN permission_id SET NOT NULL;

