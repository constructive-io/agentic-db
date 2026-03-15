-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/constraints/app_profile_permissions_profile_id_permission_id_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  DROP CONSTRAINT app_profile_permissions_profile_id_permission_id_key;


