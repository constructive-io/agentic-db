-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  DROP COLUMN name RESTRICT;


