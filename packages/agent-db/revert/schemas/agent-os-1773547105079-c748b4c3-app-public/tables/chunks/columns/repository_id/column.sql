-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/repository_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  DROP COLUMN repository_id RESTRICT;


