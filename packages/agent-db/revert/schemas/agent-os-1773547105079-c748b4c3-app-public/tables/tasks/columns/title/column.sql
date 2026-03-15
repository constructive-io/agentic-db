-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/title/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  DROP COLUMN title RESTRICT;


