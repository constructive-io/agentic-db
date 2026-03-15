-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  DROP COLUMN extracted_memory_ids RESTRICT;


