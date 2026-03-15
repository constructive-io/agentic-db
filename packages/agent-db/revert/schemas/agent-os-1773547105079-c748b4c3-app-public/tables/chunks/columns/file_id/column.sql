-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/file_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  DROP COLUMN file_id RESTRICT;


