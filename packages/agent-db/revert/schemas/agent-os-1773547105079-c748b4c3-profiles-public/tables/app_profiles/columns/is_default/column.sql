-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/is_default/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  DROP COLUMN is_default RESTRICT;


