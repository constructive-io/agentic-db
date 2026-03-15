-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  DROP COLUMN updated_at RESTRICT;


