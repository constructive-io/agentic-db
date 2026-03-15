-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/started_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  DROP COLUMN started_at RESTRICT;


