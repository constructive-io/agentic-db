-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/ended_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  DROP COLUMN ended_at RESTRICT;


