-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/constraints/app_profile_permissions_profile_id_permission_id_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  DROP CONSTRAINT app_profile_permissions_profile_id_permission_id_key;


