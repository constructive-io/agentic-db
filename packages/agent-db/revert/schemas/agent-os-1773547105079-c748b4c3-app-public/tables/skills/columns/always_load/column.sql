-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/always_load/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  DROP COLUMN always_load RESTRICT;


