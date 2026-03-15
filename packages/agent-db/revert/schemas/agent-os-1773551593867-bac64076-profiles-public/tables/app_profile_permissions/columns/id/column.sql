-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  DROP COLUMN id RESTRICT;


