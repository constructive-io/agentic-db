-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000000242


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;


