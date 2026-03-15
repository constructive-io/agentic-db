-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  DROP COLUMN parent_thread_id RESTRICT;


