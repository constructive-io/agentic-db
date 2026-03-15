-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/permission_id/alterations/alt0000001803


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;


