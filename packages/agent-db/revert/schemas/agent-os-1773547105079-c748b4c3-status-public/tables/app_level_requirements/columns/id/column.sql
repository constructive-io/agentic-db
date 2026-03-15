-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements 
  DROP COLUMN id RESTRICT;


