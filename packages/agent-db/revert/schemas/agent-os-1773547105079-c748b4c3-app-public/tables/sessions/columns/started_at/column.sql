-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/started_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  DROP COLUMN started_at RESTRICT;


