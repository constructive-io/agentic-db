-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/updated_at/alterations/alt0000001854


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


