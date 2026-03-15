-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/status/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  DROP COLUMN status RESTRICT;


