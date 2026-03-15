-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  DROP COLUMN extracted_memory_ids RESTRICT;


