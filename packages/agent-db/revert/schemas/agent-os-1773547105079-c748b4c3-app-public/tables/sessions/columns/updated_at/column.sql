-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  DROP COLUMN updated_at RESTRICT;


