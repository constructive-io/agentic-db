-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000000240


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;


