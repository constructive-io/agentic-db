-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  DROP COLUMN id RESTRICT;


