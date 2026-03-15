-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
  DROP COLUMN extracted_memory_ids RESTRICT;


