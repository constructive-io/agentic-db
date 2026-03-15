-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  DROP COLUMN updated_at RESTRICT;


