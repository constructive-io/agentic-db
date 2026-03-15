-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
  DROP COLUMN id RESTRICT;


