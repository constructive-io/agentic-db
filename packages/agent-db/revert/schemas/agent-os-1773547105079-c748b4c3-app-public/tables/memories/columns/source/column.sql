-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/source/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  DROP COLUMN source RESTRICT;


