-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/target_count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  DROP COLUMN target_count RESTRICT;


