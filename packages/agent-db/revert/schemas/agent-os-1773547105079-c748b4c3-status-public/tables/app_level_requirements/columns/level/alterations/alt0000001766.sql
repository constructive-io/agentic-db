-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/level/alterations/alt0000001766


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


