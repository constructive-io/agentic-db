-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/active_count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  DROP COLUMN active_count RESTRICT;


