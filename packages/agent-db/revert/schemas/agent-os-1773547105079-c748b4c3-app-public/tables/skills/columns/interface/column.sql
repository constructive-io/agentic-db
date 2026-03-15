-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/interface/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  DROP COLUMN interface RESTRICT;


