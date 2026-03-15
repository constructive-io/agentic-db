-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000001849
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/profile_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  ALTER COLUMN profile_id SET NOT NULL;

